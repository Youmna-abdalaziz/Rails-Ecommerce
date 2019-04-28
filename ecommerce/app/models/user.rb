class User < ApplicationRecord
#class User < ActiveRecord::Base
 # mount_uploader :avatar, AvatarUploader
  has_many:coupons
  has_one_attached :avatar
  has_many :order_products
  has_many :products ,:through => :order_products
  has_many :carts
  has_many :products ,:through => :carts


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  
  
end
