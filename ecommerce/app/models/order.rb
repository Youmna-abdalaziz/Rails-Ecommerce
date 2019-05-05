class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_many :products ,:through => :order_products

  validates :address , presence:true,:length => { :minimum => 8,:maximum   => 20, } , on: :create
  validates :credit_cart, presence:true, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." },:length => { :is => 10, } , on: :create
  validates :phone, presence:true, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." },:length => { :is => 12, } , on: :create



end
