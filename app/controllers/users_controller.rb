class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
    @books = Book.all
    @user = current_user

  end

  def show
    @user = User.find(params[:id])
    @books =@user.books
    @book = Book.new


  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      
     redirect_to user_path, notice:  "You have updated user successfully."
    else
      render :edit
    end
    
    
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
