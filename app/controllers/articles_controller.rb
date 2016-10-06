class ArticlesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]
  
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(article_params)
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(new_article_params)
      if @article.save
        if params[:article][:pics].present?
          render :crop
        else
          redirect_to @article
        end
      else
        render :new
      end
  end
  
  def crop
    
  end
  
  def edit
    @article = Article.find(article_params)
  end
  
  def update
    @article = Article.find(article_params)
      if @article.update(new_article_params)
        if params[:article][:pics].present?
          render :crop
        else
          redirect_to @article
        end
      else
        render :edit
      end
  end

  def destroy
    @article = Article.find(article_params)
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
    end
  end
  
private
  def article_params
    params[:id]
  end

  def new_article_params
    params.require(:article).permit(:title, :body, :pics, :crop_x, :crop_y, :crop_w, :crop_h )
  end
end
