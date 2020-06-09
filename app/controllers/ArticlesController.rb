class ArticlesController < ApplicationController
  before_action :recup_article, only: [:show, :update, :edit, :destroy]
  
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      rediret_to articles_path
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def recup_article
    @article = Article.find(params[:id])
  end

end