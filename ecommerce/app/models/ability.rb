# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    case user
    when AdminUser
      user ||= AdminUser.new
      alias_action :create, :read, :update, :destroy, :to => :crud
      can :crud, [Category,Brand,Store,Coupon]
    when User
      user ||= User.new
      if user.is_seller?
        puts "is_seller:::::::::::::::===#{user.is_seller?}"
        alias_action :create, :read, :update, :destroy, :to => :crud
        can :crud, Product
      else
        puts "is_seller:::::::::::::::===#{user.is_seller?}"
        can:read,Product
        alias_action :create, :read, :update, :destroy, :to => :crud
        can :crud, Cart
      end
      
    end
  end
end
