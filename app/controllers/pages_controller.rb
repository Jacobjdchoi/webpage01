class PagesController < ApplicationController
  # before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :navBarParams

#Home page
  def home
    
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
private

def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end

end
