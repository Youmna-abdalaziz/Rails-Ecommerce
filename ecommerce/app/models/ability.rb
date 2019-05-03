# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    case user
    when AdminUser
      user ||= AdminUser.new
      can:manage,:all
    when User
      user ||= User.new
      if user.is_seller?
        # puts "is_seller:::::::::::::::===#{user.is_seller?}"
        alias_action :create, :read, :update, :destroy, :to => :crud
        can :crud, Product
      else
        # puts "is_seller:::::::::::::::===#{user.is_seller?}"
        can:read,Product
      end
      
    end
  end
end
