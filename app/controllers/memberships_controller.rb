class MembershipsController < ApplicationController
  
  
  def create
    
    @membership = Membership.new(:network_id => params[:network_id], :user_id => params[:user_id])

    if @membership.save
      flash[:notice] = 'Membership was successfully created.'
      redirect_to(networks_users_path)
    else
      redirect_to(networks_path)
    end
  end

  def destroy
    @membership = Membership.find(:first, :conditions => "network_id = '#{params[:network_id]}' AND user_id = '#{params[:user_id]}'")


    @membership.destroy
    redirect_to(networks_users_path)
  end
  
end


