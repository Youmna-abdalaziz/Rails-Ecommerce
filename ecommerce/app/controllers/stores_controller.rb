class StoresController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
  # include CanCan::ControllerAdditions
  # load_and_authorize_resource

  def index
    @store=Store.all
    # authorize! :read, @store
  
  end 
  def new
    @store =Store.new
    # authorize! :create, @store
  end

  def create
    @store = Store.new(store_params)
    puts "******************* #{store_params}*********"
    # @product.user_id = current_user.id

    if @store.save
   
      redirect_to @store
    else
        render 'new'
    end
  end

  private

    def store_params
      params.require(:store).permit(:name, :summary, :user_id)
    end

end
