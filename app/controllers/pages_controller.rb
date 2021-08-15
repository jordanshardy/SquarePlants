class PagesController < ApplicationController
  def home
     @categories = Category.all

    cate = params[:cate]
      if !cate.nil?
        @posts = Post.where(:category_id => cate)
      else
        @posts = Post.all
      end
  end

  def about

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :picture, :content, :age, :grow_medium, :training_method, :light_type, :room_type, :watering, :strain, :category_id)
    end

end
