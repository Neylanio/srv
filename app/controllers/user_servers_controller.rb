class UserServersController < ApplicationController
  before_action :set_user_server, only: [:show, :edit, :update, :destroy]

  # GET /user_servers
  # GET /user_servers.json
  def index
    @user_servers = UserServer.all
  end

  # GET /user_servers/1
  # GET /user_servers/1.json
  def show
  end

  # GET /user_servers/new
  def new
    @user_server = UserServer.new
  end

  # GET /user_servers/1/edit
  def edit
  end

  # POST /user_servers
  # POST /user_servers.json
  def create
    @user_server = UserServer.new(user_server_params)

    respond_to do |format|
      if @user_server.save
        format.html { redirect_to @user_server, notice: 'User server was successfully created.' }
        format.json { render :show, status: :created, location: @user_server }
      else
        format.html { render :new }
        format.json { render json: @user_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_servers/1
  # PATCH/PUT /user_servers/1.json
  def update
    respond_to do |format|
      if @user_server.update(user_server_params)
        format.html { redirect_to @user_server, notice: 'User server was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_server }
      else
        format.html { render :edit }
        format.json { render json: @user_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_servers/1
  # DELETE /user_servers/1.json
  def destroy
    @user_server.destroy
    respond_to do |format|
      format.html { redirect_to user_servers_url, notice: 'User server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_server
      @user_server = UserServer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_server_params
      params.require(:user_server).permit(:user_id, :server_id)
    end
end
