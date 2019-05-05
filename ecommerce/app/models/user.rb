class User < ApplicationRecord
  has_and_belongs_to_many :coupons
  has_one_attached :avatar
  has_many :order_products
  has_many :orders ,:through => :order_products
  has_many :orders
  has_many :carts
  has_many :products ,:through => :carts

  validates :name , presence:true, on: :create
  validates :name , presence:true, on: :update
  validates :password_confirmation , presence:true, on: :create
  validates :email , uniqueness: true, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def is_seller?
       is_seller
  end

 def is_validate_user_coupon coupon_id
           ! self.coupons[coupon_id].present?      ###  in model user or coupon_user   
 end


  
  
end
