class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update destroy ]

  # GET /pages or /pages.json
  def work
    @video_url = "https://www.youtube.com/embed/5BDTetOn0QQ?si=ucFyUv95z3mTpSRu"
    @secondvideo_url = "https://www.youtube.com/embed/jAqkiw0bsg4?si=hYdvRpimyOlZYifK"
    @thirdvideo_url = "https://www.youtube.com/embed/EI6e4JEWamM?si=WScHhPANY6B5qKKz"
    @forthvideo_url = "https://www.youtube.com/embed/08aCOf088I8?si=45e5jhRHblN1Y_M4"
    @fivevideo_url = "https://www.youtube.com/embed/08aCOf088I8?si=45e5jhRHblN1Y_M4"
    @sixvideo_url = "https://www.youtube.com/embed/08aCOf088I8?si=45e5jhRHblN1Y_M4"
    @sevenvideo_url = "https://www.youtube.com/embed/08aCOf088I8?si=45e5jhRHblN1Y_M4"
    @eightvideo_url = "https://www.youtube.com/embed/08aCOf088I8?si=45e5jhRHblN1Y_M4"
  end

  # GET /pages/1 or /pages/1.json
  def landing
  end

  def about
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page), notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to page_url(@page), notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.fetch(:page, {})
    end
end
