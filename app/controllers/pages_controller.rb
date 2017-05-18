class PagesController < ApplicationController
before_action :authenticate_admin! , only: [:indexadmin]

  def home
  	 @publications = Publication.all
  end

  def about
  	
  end

    def misavisos
    @publications = current_user.publications.all

    end

     def indexadmin

  	@publications = Publication.in_draft


  end

end