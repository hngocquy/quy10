class UserInterfaceController < ApplicationController
  skip_before_action :verify_authenticity_token
  

  layout 'appli'
  def check
    @inputUsername = params['inputUsername']
    @inputPassword = params['inputPassword']
    
    @select_querry_account = Manaproduct.where(username: @inputUsername, password: @inputPassword).take
  
    @id_user = @select_querry_account.id

    if (@select_querry_account == nil)
      puts 'no'
    else
      puts @id_user
      render json: { id_user: @id_user, msg:'ok'}
    end
  end

  def dangky
    @inputUsername = params['inputUsername']
    @inputPassword = params['inputPassword']
    
    @select_querry_account = Manaproduct.create(username: @inputUsername, password: @inputPassword)
  
    if (@select_querry_account == nil)
      puts 'no'
    else
      puts 'ok'
      render json: {msg:'ok'}
    end
  end

  def page1
   @slide = Slide.all
    # @data_category = Manacate.all
    @data_product = Mnproduct.paginate(:page => params[:page], :per_page => 8)
    @data_product1 = Mnproduct1.paginate(:page => params[:page], :per_page => 8)
    # @order_item = @order.order_items.new

  end

  
  
  def page_detail_product
    @data_category = Manacate.all
    @data_product = Mnproduct.all

    @id_product = params['id_product']
    @select_product_to_view = Mnproduct.where(id: @id_product).take
  end

  def page_cart
    @data_category = Manacate.all

    @id_user = params['id_user']
    @data_cart = ModelCart.where(id_of_user: @id_user).all
  end
  
  def add_cart
    @inputNumberProduct = params['inputNumberProduct']
    @id_user = params['id_user']
    @id_product = params['id_product']

    @select_product = Manaproduct.where(id: @id_product).take
    @price = @select_product.price_pro
    @name_product = @select_product.name_pro

    @checkCart = ModelCart.all
    if (@checkCart == nil)
      @addCart = ModelCart.create(id_of_user: @id_user, id_of_product: @id_product, name_product: @name_product, number_product: @inputNumberProduct, price: @price)
    else
      @checkProduct = ModelCart.where(id_of_user: @id_user,id_of_product: @id_product).take
      if (@checkProduct == nil)
        @addCart = ModelCart.create(id_of_user: @id_user, id_of_product: @id_product, name_product: @name_product, number_product: @inputNumberProduct, price: @price)
      else
        @numberProduct = (@checkProduct.number_product).to_i
        @plusNumber = @numberProduct + @inputNumberProduct.to_i
        @updateNumberPproduct = ModelCart.where(id_of_user: @id_user, id_of_product: @id_product).update_all(number_product: @plusNumber)
      end
    end

    render json: {msg: 'ok'}
  end
  
  def plus_number_product
    
    @id_user = params['id_user']
    @id_product = params['id_product']
    @plusNumber = params['plusNumber']

    @update = ModelCart.where(id_of_user: @id_user, id_of_product: @id_product).update_all(number_product: @plusNumber)
    render json: {msg: 'ok'}
  end
  
  def minus_number_product
    @id_user = params['id_user']
    @id_product = params['id_product']
    @plusNumber = params['plusNumber']

    @update = ModelCart.where(id_of_user: @id_user, id_of_product: @id_product).update_all(number_product: @plusNumber)
    render json: {msg: 'ok'}
  end
  

  def get_total_money
    @id_user = params['id_user']
    @data_money = ModelCart.where(id_of_user: @id_user).all
    render json:{data_money: @data_money}
  end
  
  def page_view_product_category
    @data_category = Manacate.all
    @data_product = Mnproduct.all
  end
   def page_view_product1_category
    @data_product = Mnproduct1.all
    @data_category = Manacate.all
    
  end
  def show
    @data_product = Mnproduct.where(id_user: @id_user).all
    
    
  end


end


