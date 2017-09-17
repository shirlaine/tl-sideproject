class Admin::BaseController < ApplicationController

  before_action :authenticate_admin!

  layout 'admin' #in the folder layout/admin.html.erb

end
