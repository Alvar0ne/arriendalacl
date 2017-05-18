class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy, :publish]

  # GET /publications
  # GET /publications.json
  def index
    
   
    @region_recibida = params[:region_id]
    @comunas = Comuna.where(:region_id => @region_recibida)
    @q = Publication.ransack(params[:q])
    @publications = @q.result.paginate(page: params[:page],per_page:8).where(:region_id => @region_recibida)
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
    @publication_attachments = @publication.publication_attachments.all
  end



  # GET /publications/new
  def new
   @motivo_recibido = params[:motivo]
   @publication = Publication.new
   @publication_attachment = @publication.publication_attachments.build

  end

 


  def edit
  end



  def indexadmin
      @publications = Publication.most_recent.in_draft
  end




  def publish
      @publication.publish!
      redirect_to @publication
   end





  def create
    if user_signed_in?

    @publication = current_user.publications.new(publication_params)

  else
      @publication = Publication.new(publication_params)

    end




    respond_to do |format|
      if @publication.save
         params[:publication_attachments]['avatar'].each do |a|
         @publication_attachment = @publication.publication_attachments.create!(:avatar => a)
       end
        format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'Publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:titulo, :precio,:motivo, :clasificacion, :tipo, :state ,:superficie, :dormitorio, :baño, :estacionamiento, :descripcion,:region_id,:comuna_id, publication_attachments_attributes: [:id, :publication_id, :avatar])
    end
end
