class Coupon < ApplicationRecord
    has_many:users , dependent: :destroy
end
