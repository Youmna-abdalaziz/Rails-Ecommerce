class StoresController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
  # include CanCan::ControllerAdditions
  load_and_authorize_resource

  def index
    @store=Store.all
    authorize! :read, @store
  
  end 
  def new
    @store =Store.new
    authorize! :create, @store
  end

  private

    def store_params
      params.require(:store).permit(:name, :summary, :user_id)
    end

end
