class HolidayrequestsController < ApplicationController
  
  def index
    login_required
    @holidayrequests = Holidayrequests.all.paginate(:page => params[:page], :per_page => 25)
    
    respond_to do |format|
	format.html { }
	format.js {
	render :update do |page|
	page.replace_html 'all-posts', :partial => @holidayrequests
	page.replace_html 'pagination', :partial => 'pagination',:locals => {:collection => @holidayrequests}
end
}
format.xml { render :xml => @holidayrequests }
end
end
  
  def show
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
      respond_to do |format|
      format.html # Send the page using HTML
      format.xml { render :xml => @holidayrequests } # Send the page using XML
      format.atom
  end
 end

  def new
    login_required
    @holidayrequests = Holidayrequests.new
  end

  def edit
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
    if current_user.id != @holidayrequests.user.id || if current_user.admin == false
    redirect_to holidayrequests_path
  end
 end
end
  
  def create  
    login_required
    @holidayrequests = Holidayrequests.create(params[:holidayrequests])
    @holidayrequests.user_id = current_user.id
    if @holidayrequests.save
    flash[:notice] = "Holiday Request Submitted!"
    else
    flash[:notice] = "Invalid Holiday Request"
    end 
    redirect_to :action => "index"
    end
  
  def update
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.update_attributes(params[:holidayrequests])
    flash[:notice] = "Holiday Request updated!"
    redirect_to @holidayrequests
    end
  
  def destroy
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.destroy
    redirect_to :action => "index"
  end
 end