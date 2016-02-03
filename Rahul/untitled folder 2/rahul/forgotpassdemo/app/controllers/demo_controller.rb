class DemoController < ApplicationController
	before_filter :authenticate_user!, :except => [ :index, :show ]
  def index
  #	session[:auth_token]=nil
  end
end
