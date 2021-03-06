# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :current_article, only: %i[edit show update destroy]

  http_basic_authenticate_with name: 'alex', password: '1111', except: %i[index show]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def current_article
    @article = Article.find(params[:id])
  end
end
