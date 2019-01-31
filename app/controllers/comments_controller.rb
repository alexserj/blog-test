class CommentsController < ApplicationController
  before_action :get_article

  http_basic_authenticate_with name: "alex", password: "1111", only: :destroy

  def create
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

  def get_article
    @article = Article.find(params[:article_id])
  end
end
