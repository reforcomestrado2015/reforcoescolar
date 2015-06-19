class PermissaoacessosController < ApplicationController
  before_action :set_permissaoacesso, only: [:show, :edit, :update, :destroy]

  # GET /permissaoacessos
  # GET /permissaoacessos.json
  def index
    @permissaoacessos = Permissaoacesso.all
  end

  # GET /permissaoacessos/1
  # GET /permissaoacessos/1.json
  def show
  end

  # GET /permissaoacessos/new
  def new
    @permissaoacesso = Permissaoacesso.new
  end

  # GET /permissaoacessos/1/edit
  def edit
  end

  # POST /permissaoacessos
  # POST /permissaoacessos.json
  def create
    @permissaoacesso = Permissaoacesso.new(permissaoacesso_params)

    respond_to do |format|
      if @permissaoacesso.save
        format.html { redirect_to @permissaoacesso, notice: 'Permissaoacesso was successfully created.' }
        format.json { render :show, status: :created, location: @permissaoacesso }
      else
        format.html { render :new }
        format.json { render json: @permissaoacesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permissaoacessos/1
  # PATCH/PUT /permissaoacessos/1.json
  def update
    respond_to do |format|
      if @permissaoacesso.update(permissaoacesso_params)
        format.html { redirect_to @permissaoacesso, notice: 'Permissaoacesso was successfully updated.' }
        format.json { render :show, status: :ok, location: @permissaoacesso }
      else
        format.html { render :edit }
        format.json { render json: @permissaoacesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permissaoacessos/1
  # DELETE /permissaoacessos/1.json
  def destroy
    @permissaoacesso.destroy
    respond_to do |format|
      format.html { redirect_to permissaoacessos_url, notice: 'Permissaoacesso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissaoacesso
      @permissaoacesso = Permissaoacesso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permissaoacesso_params
      params.require(:permissaoacesso).permit(:descricao)
    end
end
