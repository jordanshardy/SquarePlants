class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]


  def index
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html{redirect_to current_user, notice: 'You successfully updated your profile'}
      else 
        format.html {render :edit}
      end
    end
  end

  private 
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :phone_number,
      :bio,
      :picture
    )
  end

  def post_params
      params.require(:post).permit(:name, :picture, :content, :age, :grow_medium, :training_method, :light_type, :room_type, :watering, :strain, :category_id)
    end

end
