class WelcomeController < ApplicationController

def index
  @user = @auth
  @products = Product.all
end

end