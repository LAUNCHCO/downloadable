class Admin::ProductDownloadsController < Admin::BaseController

  resource_controller
  belongs_to :product
  # after_filter :set_image, :only => [:create, :update]
   
  # 
  # new_action.response do |wants|
  #   wants.html {render :action => :new, :layout => false}
  # end
  # 
  # create.before do 
  #   option_values = params[:new_variant]
  #   option_values.each_value {|id| @object.option_values << OptionValue.find(id)}
  #   @object.save
  # end
  # 
  
  # redirect to index (instead of r_c default of show view)
  create.response do |wants| 
    wants.html {redirect_to collection_url}
  end
  
  # redirect to index (instead of r_c default of show view)
  update.response do |wants| 
    wants.html {redirect_to collection_url}
  end
  
end