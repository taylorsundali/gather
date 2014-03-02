class UsersController < ApplicationController

  layout false

  def new
  end

  def index
  	@users = User.order("first_name ASC")
  end

  def show
  end

  def delete
  end
end
