class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article), notice: 'New comment added!'
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), notice: 'Comment deleted!'
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
