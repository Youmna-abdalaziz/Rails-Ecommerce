ActiveAdmin.register Store do
    permit_params :name , :summary, :user_id

    # controller do
    #     def create
    #         store = Store.new(store_params)
    #         puts "******************* #{store_params}*********"
    #         # @product.user_id = current_user.id
    #         _id=@store.user_id
    #         def set_is_seller(_id)
    #           a = User.find_by_id(_id)
    #           a.is_seller = true
    #           a.save
    #         end  

    #         set_is_seller(_id)
    #         flash[:notice] = 'Store created successfully'
      
    #     end
    #   end

end
