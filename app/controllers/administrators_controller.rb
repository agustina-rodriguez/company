class AdministratorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def toggle_admin
    # toggle_admin -> para poder poner o sacar el permiso de administrador
    @user = User.where(id: params[:id]).first

    # (@user.admin == (nil || false)) ? @user.admin = true : @user.admin = false
    if @user.admin == (nil || false)
      @user.admin = true
    else
      @user.admin = false
    end

    @user.save
    redirect_to administrators_url 
  end
end
