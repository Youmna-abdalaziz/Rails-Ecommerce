ActiveAdmin.register Store do
    permit_params :name , :summary, :user_id

        controller do
            def create
                @store = Store.new(permitted_params[:store])
                _id=@store.user_id
                def set_is_seller(_id)
                a = User.find_by_id(_id)
                a.is_seller = true
                a.save
                end
                set_is_seller(_id)

                if @store.save
                redirect_to "/admin/stores"
                else
                    render "new"
                end
            end
  
        end
end
