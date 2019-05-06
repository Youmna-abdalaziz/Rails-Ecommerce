ActiveAdmin.register Coupon do
    permit_params :title, :expiring_date , :usage_num, :discount_Type, :discount_value, :expiring_type


    form do |f|
        f.inputs "coupon" do 
            f.input :title, :label => "Title"
            f.input :expiring_date ,:lable =>"expiring_date"
            f.input :usage_num ,:lable =>"usage_num"
            f.input :discount_Type ,:lable =>"Discount Type" , :as => :select, :collection => [["Fixed" , "Fixed"],["Percentage","Percentage"]]
            f.input :discount_value ,:lable =>"discount_value"
            f.input :expiring_type ,:lable =>"Expiring Type" , :as => :select, :collection => [["usage_num","usage_num"],["expiring_date","expiring_date"],["Both","Both"]]
            f.actions
        end
    end
end
