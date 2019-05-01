class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
    # include CanCan::ControllerAdditions
  load_and_authorize_resource
  def index
    unless  params[:search]
      @products=Product.all
      @brand=Brand.all
      @category=Category.all    
    end
    # if params[:search] and params[:product][:category_id]=nil
    if params[:search]
      @search_term=params[:search]
      @products=Product.search_by(@search_term)
      @brand=Brand.all
      @store=Store.all

      @category=Category.all
      # @search_term=params[:search]
      if params[:product][:category_id] !='' and (params[:product][:brand_id] =='' or params[:product][:brand_id] !='') 
        @q="sds"
        @filter_brand=params[:product][:brand_id]
        @filter_term=params[:product][:category_id]
        @search_term=params[:search]
        # @p=@products.filter(@search_term)
        @products=Product.filter(@filter_term,@search_term)
        @brand=Brand.all
        @store=Store.all

        @category=Category.all
      elsif params[:product][:brand_id] !='' and (params[:product][:category_id] =='' or params[:product][:category_id] !='') 
        @filter_brand=params[:product][:brand_id]

        @search_term=params[:search]

        @products=Product.filterb(@filter_brand,@search_term)
        @store=Store.all

        @brand=Brand.all
        @category=Category.all
      elsif params[:product][:category_id] =='' and params[:product][:brand_id] ==''
        @search_term=params[:search]
        @products=Product.search_by(@search_term)
        @brand=Brand.all
        @category=Category.all
        @store=Store.all
        

 
    end


    end

 end 
  

   def new
     @product =Product.new
     @categories = Category.all
     @brands = Brand.all
     @stores = Store.all 
     authorize! :crud, @product
   end

   def create
    @product =Product.new(product_params)
    # @stores=Store.all
    # st_id=@stores.get_seller_store(current_user.id)
    # st_id=Store.select(:id).where(user_id:current_user.id)


    st_id=Store.select("id,name").where({user_id:current_user.id})

    # st=Store.where(user_id:current_user.id)
    # st_id=st.id
    puts "product store is ***************************************************************************++++++ #{st_id}"
    @product.store_id=st_id
    @product.save
    redirect_to @product
  
   end

   def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
    @stores = Store.all 
    authorize! :crud, @product
   end
  
  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :store_id)
    end

    

end
