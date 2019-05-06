class StoresController < InheritedResources::Base
  before_action :authenticate_user!
  # include CanCan::ControllerAdditions
  load_and_authorize_resource

  def index
    @stores=Store.all
    authorize! :crud, @store
  end 
  def new
    @store =Store.new
    authorize! :crud, @store
  end
  
  def create
    @store = Store.new(store_params)
    puts "******************* #{store_params}*********"
    # @product.user_id = current_user.id
    _id=@store.user_id
    def set_is_seller(_id)
      a = User.find_by_id(_id)
      a.is_seller = true
      a.save
    end

    set_is_seller(_id)

    if @store.save
      redirect_to @store
    else
        render 'new'
    end
    authorize! :crud, @store
  end

  private

    def store_params
      params.require(:store).permit(:name, :summary, :user_id)
    end

    
end
