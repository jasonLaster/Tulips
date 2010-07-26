class ArticlesController < ApplicationController
  
  # def index
  #   @networks = Network.all
  # end
  # 
  # def show
  #   @network = Network.find(params[:id])
  #   @articles = @network.articles
  # end
  # 
  # def members
  #   @network = Network.find(params[:id])
  #   @members = @network.users
  # end

  def new
    @article = Article.new(:network_id => params[:network_id])
    @article.user_id = current_user.id
    puts @article
  end

  # def edit
  #   @network = Network.find(params[:id])
  # end
  # 
  def create
    @article = Article.new(params[:article])
  
    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to(network_path(@article.network))
    else
      render :action => "new" 
    end
  end
  # 
  # def update
  #   @network = Network.find(params[:id])
  # 
  #   if @network.update_attributes(params[:network])
  #     flash[:notice] = 'Network was successfully updated.'
  #     redirect_to(@network)
  #   else
  #     render :action => "edit"
  #   end
  # end
  # 
  # def destroy
  #   @network = Network.find(params[:id])
  #   @network.destroy
  #   redirect_to(networks_url)
  # end
end
