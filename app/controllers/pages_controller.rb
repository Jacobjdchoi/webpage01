class PagesController < ApplicationController

#Home page
  def home
    @articles = Article.where.not(pics: nil).order(updated_at: :desc).limit(5)
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

end
