+class AlbumsController < ActionController::Base
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
      table.column :title, :string, null: false
      table.column :performer, :string, null: false
      table.column :cost, :integer, null: false
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
      table.column :name, :string, null: false
      
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
end

class Purchase < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  #validates that album_id and user_id are always present
  validates :album_id, presence: true
  validates :user_id, presence: true
  
  
end

class User < ActiveRecord::Base
  has_many :purchases
  #validates that name is always present
  validates :name, presence: true
  
end



