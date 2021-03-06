class ArticlesController < ApplicationController
  
  before_filter :login_required, :only => :new
  
  
  # def index
  #   @networks = Network.all
  # end
  # 
  def show
    @network = Network.find_by_id(params[:network_id])
    @article = Article.find_by_id(params[:id])

    comments = @article.comments
    @top_level_comments = comments - comments.select(&:comment)

  end
  # 
  # def members
  #   @network = Network.find(params[:id])
  #   @members = @network.users
  # end

  def new
    @network = Network.find(params[:network_id])
    @article = @network.articles.new
  end

  # def edit
  #   @network = Network.find(params[:id])
  # end
  # 
  def create
    @network = Network.find_by_id(params[:network_id])
    
    
    @article = Article.new(params[:article])
    @article.network_id = params[:network_id]
    @article.user_id = current_user.id
    @article.total_likes = (rand*100).round
    @article.total_comments = (rand*50).round 
    
    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to(network_path(@network))
    else
      render new_network_article(@network)
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
  def destroy
    @network = Network.find_by_id(params[:id])
    @article = Article.find_by_id(params[:id])
    redirect_to(networks_path(@network))
  end
  
end

