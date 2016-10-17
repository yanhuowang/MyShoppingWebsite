class Dashboard::Admin::ItemsController < Dashboard::Admin::AdminController
	def index
		@items = @paginate = Item.order('id DESC').paginate(:page => params[:page])
	end 

  	def new
    	@item = Item.new
  	end

  	def edit
  		@item = Item.find(params[:id])
  	end

  	def create
    	@item = Item.new(item_params)
		@item.save
      	redirect_to :action => :index
    end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		redirect_to :action => :index
	end

	def destroy
		@item.destroy
		redirect_to :action => :index
	end

	private
   
    def item_params
      params.require(:item).permit!
    end

end
