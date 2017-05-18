class PagesController < ApplicationController


  def home
  	 @publications = Publication.all
  end

  def about
  	
  end

    def misavisos
    @publications = current_user.publications.all

    end

end