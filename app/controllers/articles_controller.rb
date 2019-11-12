class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(articles_params)
    redirect_to articles_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
