class PagesController < ApplicationController

#Home page
  def home
    @articles = Article.all.includes(:photos).order(created_at: :desc).limit(5)
  end

#About us page
  def aboutUs

  end

#A letter from the CEO page
  def ceoLetter

  end

#Company history page
  def history

  end

#Contact Us page
  def contactUs

  end

#Locations page
  def locations

  end

#Careers page
  def careers

  end

  def downloads
    @attachments = Attachment.all
  end
  def downloads_search
    @query = params[:query]
    @attachments_array = []
    unless params[:query].strip.blank?
      @query.split(' ').map{|q| "%#{q}%"}.each do |split_query|
        Attachment.where("file_path LIKE ?",split_query).each {|obj| @attachments_array << obj}
      end
    else
      @attachments_array = Attachment.all
    end
    @attachments = @attachments_array.uniq
    respond_to do |format|
      format.js
    end
  end

  def search
    @query = params[:query]
    @product_types_array = []
    @brands_array = []
    @products_array = []
    @attachments_array = []
    @articles_array = []
    # first filter
    @query.split(' ').map{|q| "%#{q}%"}.each do |split_query|
      ProductType.where("name LIKE ?", split_query).each {|obj| @product_types_array << obj }
      Brand.where("name LIKE ?", split_query).each {|obj| @brands_array << obj}
      Product.includes(:translations).
        where(product_translations: {locale: params[:locale]}).
        where("product_translations.name LIKE ?", split_query).each {|obj| @products_array << obj}
      Attachment.where("file_path LIKE ?", split_query).each {|obj| @attachments_array << obj}
      Article.includes(:translations).
        where(article_translations: {locale: params[:locale]}).
        where("article_translations.title LIKE ?", split_query).each {|obj| @articles_array << obj}
    end
    # outcome
    @product_types = @product_types_array.uniq
    @brands = @brands_array.uniq
    @products = @products_array.uniq
    @attachments = @attachments_array.uniq
    @articles = @articles_array.uniq
  end

end
