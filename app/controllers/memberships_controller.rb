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
    @membership = Membership.find(:first, :conditions => ["network_id = :network_id and user_id = :user_id", params])
    @membership.destroy
    flash[:notice] = "You have succesfully left a network."
    redirect_to(networks_users_path)
  end
  
end