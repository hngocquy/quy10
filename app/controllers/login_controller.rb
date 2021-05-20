class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token

    def login_user

    end

    def login_admin
     
    end

    def check_admin
         @inputUsername = params['inputUsername']
    @inputPassword = params['inputPassword']

    @select_querry_account = ModelDb.where(name_admin: @inputUsername, password: @inputPassword).take
  
    if (@select_querry_account == nil)
      puts 'no'
    else
  
  @id_user = @select_querry_account.id
      puts @id_user
      render json: { id: @id_user, msg:'ok'}
    end
  end
end