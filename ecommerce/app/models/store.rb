class Store < ApplicationRecord
  belongs_to :user
  has_many :products
  validates :user_id , uniqueness: true, on: :create
  validates :name , uniqueness: true, on: :create
  validates :user_id , uniqueness: true, on: :update
  validates :name , uniqueness: true, on: :update
  validates :name , presence:true, on: :create
  validates :name , presence:true, on: :update
  validates :summary , presence:true, on: :create
  validates :summary , presence:true, on: :update
  validates :user_id , presence:true, on: :create
  validates :user_id , presence:true, on: :update





  def store_seller
    user.name
  end

end
