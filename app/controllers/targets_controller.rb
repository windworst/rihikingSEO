class TargetsController < ApplicationController
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  # GET /targets
  # GET /targets.json
  def index
    @targets = Target.all
  end

  # GET /targets/1
  # GET /targets/1.json
  def show
  end

  # GET /targets/new
  def new
    @target = Target.new
  end

  # GET /targets/1/edit
  def edit
  end

  # POST /targets
  # POST /targets.json
  def create
    @target = Target.new(target_params)

    respond_to do |format|
      if @target.save
        format.html { redirect_to @target, notice: 'Target was successfully created.' }
        format.json { render action: 'show', status: :created, location: @target }
      else
        format.html { render action: 'new' }
        format.json { render json: @target.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /targets/1/run
  def run
    # @target = Target.findbyId
    require 'open-uri'
    @doc = Nokogiri::HTML(open(@target.url))
    @links = @doc.css(@target.seletor)
    @links.each do |a|
      @activity = Activity.new

      if a[:href] =~ Regexp.new(@target.linkreg)
      else
        next
      end

      # todo blacklist
      if a.content =~ Regexp.new(@target.namereg)
        @activity.name = a.content
      else
        next
      end

      if a[:href] =~ /(http|https):\/\/[^\s]*/
        @activity.link = a[:href]
      else
        uri = URI.parse(@target.url)
        @activity.link = uri.scheme + uri.host + "/" + a[:href]
      end

      @activity.category = @target.id
      @activity.status = 10
    end
  end

  # PATCH/PUT /targets/1
  # PATCH/PUT /targets/1.json
  def update
    respond_to do |format|
      if @target.update(target_params)
        format.html { redirect_to @target, notice: 'Target was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /targets/1
  # DELETE /targets/1.json
  def destroy
    @target.destroy
    respond_to do |format|
      format.html { redirect_to targets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target
      @target = Target.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def target_params
      params.require(:target).permit(:name, :url, :status, :selector, :linkreg, :namereg, :scancount, :scantime, :updatetime)
    end
end