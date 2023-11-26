class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all 
    render json: @articles 
  end

  def create
    @article  = Artice.create(article_parmas)
  end

  def article_parmas
    params.require(:article).permit(:title, :body, :user_id)
  end
end
