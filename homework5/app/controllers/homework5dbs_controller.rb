class Homework5dbsController < ApplicationController
  before_action :set_homework5db, only: [:show, :edit, :update, :destroy]

  # GET /homework5dbs
  # GET /homework5dbs.json
  def index
    @homework5dbs = Homework5db.all
  end

  # GET /homework5dbs/1
  # GET /homework5dbs/1.json
  def show
  end

  # GET /homework5dbs/new
  def new
    @homework5db = Homework5db.new
  end

  # GET /homework5dbs/1/edit
  def edit
  end

  # POST /homework5dbs
  # POST /homework5dbs.json
  def create
    @homework5db = Homework5db.new(homework5db_params)

    respond_to do |format|
      if @homework5db.save
        format.html { redirect_to @homework5db, notice: 'Homework5db was successfully created.' }
        format.json { render :show, status: :created, location: @homework5db }
      else
        format.html { render :new }
        format.json { render json: @homework5db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homework5dbs/1
  # PATCH/PUT /homework5dbs/1.json
  def update
    respond_to do |format|
      if @homework5db.update(homework5db_params)
        format.html { redirect_to @homework5db, notice: 'Homework5db was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework5db }
      else
        format.html { render :edit }
        format.json { render json: @homework5db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homework5dbs/1
  # DELETE /homework5dbs/1.json
  def destroy
    @homework5db.destroy
    respond_to do |format|
      format.html { redirect_to homework5dbs_url, notice: 'Homework5db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework5db
      @homework5db = Homework5db.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework5db_params
      params.require(:homework5db).permit(:title, :text, :author, :date)
    end
end
