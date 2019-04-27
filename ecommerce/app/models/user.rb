class User < ApplicationRecord
#class User < ActiveRecord::Base
 # mount_uploader :avatar, AvatarUploader
  has_many:coupons
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
  # Setup accessible (or protected) attributes for your model
  attr_accessor :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar









  

  has_many :orders
  has_one :shopping_cart
=======
>>>>>>> 3086c3322b8e72e47701678bc4681731544040c2
end
