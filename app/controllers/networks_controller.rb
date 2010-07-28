class NetworksController < ApplicationController

  def index
  end
  
  def networks
    @networks = Network.all
  end

  def show
    @network = Network.find_by_id(params[:id])
    @articles = @network.articles
  end

  def members
    @network = Network.find(params[:id])
    @members = @network.users
  end

  def new
    @network = Network.new
  end

  def edit
    @network = Network.find(params[:id])
  end

  def create
    @network = Network.new(params[:network])
    if @network.save
      flash[:notice] = 'Network was successfully created.'
      redirect_to(@network)
    else
      render :action => "new" 
    end
  end

  def update
    @network = Network.find(params[:id])

    if @network.update_attributes(params[:network])
      flash[:notice] = 'Network was successfully updated.'
      redirect_to(@network)
    else
      render :action => "edit"
    end
  end

  def destroy
    @network = Network.find(params[:id])
    @network.destroy
    redirect_to(networks_url)
  end
end
