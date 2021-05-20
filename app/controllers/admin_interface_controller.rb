class AdminInterfaceController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout 'appli'
  def index_admin
    @id_user = params['id_user']
  end

  def page_add_category
    @data_category = ModelCategory.all 
  end

  def add_category
    @data_category = ModelCategory.all 

    @inputCategory = params['inputCategory']

    @addCategory = ModelCategory.create(name_category: @inputCategory)

    render json: {msg: 'ok'}
  end
  
  def page_add_product
    @data_category = ModelCategory.all 

    @id_user = params['id_user']
    @data_category = ModelCategory.all
  end
  
  def add_product
    @data_category = ModelCategory.all 

    @id_user = params['id_user']
    @inputCategory = params['inputCategory']
    @inputTitle = params['inputTitle']
    @inputPrice = params['inputPrice']
    @inputImage = "null"
    @image = params['image']

    @add_product = ModelProduct.create(id_of_user: @id_user, id_of_category: @inputCategory, title: @inputTitle, price: @inputPrice, image: @inputImage)
    puts 'link image'
    puts @image
    render json: {msg: 'ok'}
  end
  
  def page_edit_category
    @data_category = ModelCategory.all
  end

  def page_edit_product
    @data_category = ModelCategory.all 

    @data_product = ModelProduct.all
  end

  def new
  end

  def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to root_url, notice: "Logged out!"
   else
     flash.now[:alert] = "Email or password is invalid"
     render "new"
   end
 end
 def destroy
   session[:user_id] = nil
   redirect_to root_url, noticsdaaaaaee: "Logged out!"
 end
  
end
