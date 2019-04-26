ActiveAdmin.register Store do
    permit_params :name , :summary, :user_id
end
