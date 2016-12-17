class PagesController < ApplicationController

#Home page
  def home
    @articles = Article.all.includes(:photos).order(created_at: :desc).limit(5)
    @products = Product.all.includes(:photos)
  end

#About us page
  def aboutUs

  end

#A letter from the CEO page
  def ceoLetter

  end

#Company history page
  def history
    @milestone1 = DateTime.new(1995,3,17)
    @milestone2 = DateTime.new(1995,3)
    @milestone3 = DateTime.new(2001,8)
    @milestone4 = DateTime.new(2004,1)
    @milestone5 = DateTime.new(2005,9)
    @milestone6 = DateTime.new(2012,5)
    @milestone7 = DateTime.new(2014,9)
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
    @attachments = Attachment.all.page(params[:page]).per(10)
    respond_to do |format|
      format.html
      format.js
    end
  end
  def downloads_search
    @query = params[:query]
    @attachments_array = []
    unless params[:query].strip.blank?
      #first filter

      #second filter
      @query.split(' ').map{|q| "%#{q}%"}.each do |split_query|
        Attachment.where("file_path LIKE ?",split_query).each {|obj| @attachments_array << obj}
      end
    else
      @attachments_array = Attachment.all
    end
    @attachments_array.sort_by! do |obj|
      -(obj.file_path.to_s.downcase.tap{|str| str.slice!(".pdf")}.split('/').last.split('_').map{|str| str.singularize} & @query.downcase.split(" ").map{|str| str.singularize}).count
    end
    @attachments = Kaminari.paginate_array(@attachments_array.uniq).page(params[:page]).per(10)
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
      Product.where("name LIKE ?", split_query).each {|obj| @products_array << obj}
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
