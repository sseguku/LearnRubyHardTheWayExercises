=begin
puts "Hello Kisakye"
puts "Hello again"
puts "I like typing this."
puts "This is fun"
puts "Yay! Printin."
puts 'I "Said" do not touch this'
=end

class AlbumsController < ActionController::Base
  def create
    raise_validation_error unless
    render json: Album.create!(data_params)
  end
  
  def show
    render json: existing_album
  end

  def index 
    render json: Album.all
  end
  
  def update
    existing_album.update!(data_params)
    render json: existing_album    
  end
  
  def destroy
    existing_album.destroy!
    head :no_content
  end
  
  protected
  
  def existing_album
    Album.find(params['id'])
  end

  def data_params
    params.require(:data).permit(:title, :performer, :cost)
  end
end

class PurchasesController < ActionController::Base
  def create
    render json: Purchase.create!(data_params)
  end
  
  protected 
  
  def data_params
    params.require(:data).permit(:user_id, :album_id)
  end 
end

ActiveRecord::Schema.define do
  
    create_table :albums do |table|
      table.column :title, :string
      table.column :performer, :string
      table.column :cost, :integer
      #additional columns
      table.column :last_purchased_at, :datetime
      table.column :last_purchased_by, :string
    end
  
    create_table :purchases do |table|
      table.column :user_id, :integer
      table.column :album_id, :integer
      #additional columns
      table.column :created_at, :datetime
    end
  
    create_table :users do |table|
      table.column :name, :string
      
      #addtional
      table.column :total_purchases, :integer
    end
end

class Album < ActiveRecord::Base
  has_many :purchases
  #validates presence of title, performer and cost
  validates :title, presence: true
  validates :performer, presence: true
  #also ensures it's positive and greater than zero
  validates :cost, presence: true, numericality: {only_integer: true}, length: {minimum: 1} 
  #Make the properties initially nil
  before_create :make_purchase_nil 
  
  def make_purchase_nil
    self.last_purchased_at = nil if last_purchased_at.blank?
    self.last_purchased_by = nil if last_purchased_by.blank?
  end
  
end

class Purchase < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  #validates that album_id and user_id are always present
  validates :album_id, presence: true
  validates :user_id, presence: true
  
  before_create :update_purchased_by_at
  
  after_create :denormalize

  def update_purchased_by_at
        self.created_at = Time.now if created_at.blank?
        Album.update(last_purchased_at: self.created_at, last_purchased_by: user.name) if album.last_purchased_at.blank? && album.last_purchased_by.blank?
    end
  
  def denormalize
     total_purchases = User.maximum(:total_purchases)
     self.total_purchases = total_purchase.to_i + 1
  
  end
  
end

class User < ActiveRecord::Base
  has_many :purchases
  #validates that name is always present
  validates :name, presence: true
  
  before_create :check_total_purchases
  
  #Assigns total_purchases to zero if the 
  def check_total_purchases
      self.total_purchases = 0 if total_purchases.blank?
  end
 
  
  
  
end