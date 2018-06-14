class PagesController < ApplicationController

#Home page
  def home
    # Photo dimension 952 X 428
     helper = ActionController::Base.helpers
     locale = params[:locale] || "ko/"
     aboutus   = {pics_url: helper.asset_path("about_us_img2.png"), subid: 0, type: 'About Us', title:  I18n.t('homeSlides.aboutUs'), site_url: locale + "/pages/a-letter-from-the-ceo"}
     products  = {pics_url: helper.asset_path("home_brands.png"), subid: 0, type: 'Products', title: I18n.t('homeSlides.brands'), site_url: locale + "/product-browser"}
     brands    = {pics_url: helper.asset_path("home_majorC.png"), subid: 0, type: 'Customers', title: I18n.t('homeSlides.customers'), site_url: locale + "/customers"}
     market0  = {pics_url: helper.asset_path("home_market0.png"), subid: 0, title: I18n.t('homeSlides.applications'), site_url: locale + "/markets"}
     market1  = {pics_url: helper.asset_path("home_market1.jpg"), subid: 1, title: I18n.t('homeSlides.applications'), site_url: locale + "/markets"}
     market2  = {pics_url: helper.asset_path("home_market2.jpg"), subid: 2, title: I18n.t('homeSlides.applications'), site_url: locale + "/markets"}
     market3  = {pics_url: helper.asset_path("home_market3.jpg"), subid: 3, title: I18n.t('homeSlides.applications'), site_url: locale + "/markets"}
     market4  = {pics_url: helper.asset_path("home_market4.png"), subid: 4, title: I18n.t('homeSlides.applications'), site_url: locale + "/markets"}
     markets   = {type: 'Applications', markets: [market0, market1, market2, market3, market4]}
     contactus = {pics_url: helper.asset_path("contact_us_img2.png"), subid: 0, type: 'Contact Us', title: I18n.t('homeSlides.contactUs'), site_url: locale + "/contacts/new"}
     @items = [aboutus, products, brands, markets, contactus]
     @products = Product.all
  end

#About us page
  def aboutUs

  end

#A letter from the CEO page
  def ceoLetter

  end

#Company history page
  # def history
  #   @milestone1 = DateTime.new(1995,3,17)
  #   @milestone2 = DateTime.new(1995,3)
  #   @milestone3 = DateTime.new(2001,8)
  #   @milestone4 = DateTime.new(2004,1)
  #   @milestone5 = DateTime.new(2005,9)
  #   @milestone6 = DateTime.new(2012,5)
  #   @milestone7 = DateTime.new(2014,6)
  # end

#Contact Us page
  def contactUs

  end

#Locations page
  def locations

  end

#Careers page
  def careers

  end

#Page not found
  def not_found

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
    unless params[:query].strip.blank?
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
    else
      redirect_to "/"
    end
  end

end
