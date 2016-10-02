class ArticlesController < ApplicationController
  before_action :navBarParams

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

 
private
def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end
end
