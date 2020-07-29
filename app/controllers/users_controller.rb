class UsersController < ApplicationController
before_action :authenticate_user!
  def show
    @user = current_user
  	@book = Book.new
    @user = User.find(params[:id])
    @books = @user.books.all
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def edit
  	@user = User.find(params[:id])
    if @user.id != current_user.id
       redirect_to user_path(current_user)
    end
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  	   flash[:notice] = 'You have updsted user successfully'
  	   redirect_to user_path(@user.id)
  	else
  	   render :edit
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
