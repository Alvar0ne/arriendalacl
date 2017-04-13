class PagesController < ApplicationController


  def home
  	 @publications = Publication.all
  end

  def about
  	
  end

end