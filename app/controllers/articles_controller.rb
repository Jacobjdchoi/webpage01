class ArticlesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :to_crop_obj, only: [:edit, :update]
  before_action :crop_ratio, only: [:create, :update]
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(new_article_params)
      if @article.save
        if @article.photos.present?
          @crop_obj = @article
          render "shared/crop"
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
  end

  def update
      if @article.update(new_article_params)
        if @article.photos.present?
          render "shared/crop"
        else
          redirect_to @article
        end
      else
        render :edit
      end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url }
    end
  end

private
  def set_article
    @article = Article.find(params[:id])
  end

  def to_crop_obj
    @crop_obj = @article
  end

  def crop_ratio
    @crop_ratio = 2.2222
  end

  def new_article_params
    params.require(:article).permit(*Article.globalize_attribute_names, photos_attributes: [:id, :pics, :_destroy, :article_id])
  end
end
