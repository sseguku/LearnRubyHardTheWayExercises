class AlbumsController < ActionController::Base
  def create   
    album = Album.new(album_params)
   
    #json response
    if album.save
       render json: {status: "200"}, status: :ok
      else
       render json: {status: "204"}, status: :unprocessable_entity
    end
  end
  
  def show
    # shows one album
    album = Album.find(params[:id])
    render json: {status: "200"}, status: :ok
  end

  def index 
    #
    albums = Album.all
    render json: {status: "200"}, status: :ok
  end
  
  def update
   album = Album.find(params[:id])
   if album.update_attributes(album_params)
       render json: {status: "200"}, status: :ok
   end
    
  end
  
  def destroy
    album = Album.find(params[:id])
    if album.destroy
     render json: {status: "204"}, status: :no_content
    
    end
  end
  #defines album params in hash
  def album_params
    params.permit(:title, :performer, :cost )
  end
  
end
  
class PurchasesController < ActionController::Base
  def create
    #@purchase = Purchase.new(purchase_params)
    #json response
    #if @purchase.save
     #  render json: {status: "200"}, status: :ok
     # else
      # render json: {status: "204"}, status: :unprocessable_entity
    #end
  end
  def puchase_params
    params.permit(:user_id, :album_id)
  end
end

ActiveRecord::Schema.define do
    create_table :albums do |table|
      table.column :title, :string
      table.column :performer, :string
      table.column :cost, :integer
    end
  
    create_table :purchases do |table|
      table.column :user_id, :integer
      table.column :album_id, :integer
    end
  
    create_table :users do |table|
      table.column :name, :string
    end
end

class Album < ActiveRecord::Base
  has_many :purchases
end

class Purchase < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :purchases
end