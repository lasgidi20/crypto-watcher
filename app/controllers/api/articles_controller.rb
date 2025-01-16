# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def create
    @article = Artice.create(article_params)
    render json: @article
  end
  # Allow trusted Parameters

  def article_params
    params.require(:article).permit(:title, :body, :user_id)
  end
end
