class Admin::BootcampsController < Admin::BaseController

  def index
    @bootcamps = Bootcamp.all
  end

  def new
    @bootcamp = Bootcamp.new
  end

  def create
    @bootcamp = Bootcamp.new(bootcamp_params) #whitelisting certain params to be saved
    if @bootcamp.save
      flash[:notice]= "Your entry has been saved!"
      redirect_to admin_bootcamps_path
    else
      flash.now[:error]= "Your Data has not been saved, please check parameters"
      render :new
    end
  end

  def show
    @bootcamp = Bootcamp.find(params[:id])
  end

  def edit
    @bootcamp = Bootcamp.find(params[:id])
  end


  def update
    @bootcamp = Bootcamp.find(params[:id])
    if @bootcamp.update(bootcamp_params)
      flash[:notice]= "Your entry has been saved!"
      redirect_to admin_bootcamp_path
      else
    flash.now[:error] = "Your Data has not been updated, please check parameters"
    render :edit
    end
  end

  private

  def bootcamp_params
    #params is a hash, only permit these keys to be passed to the params hash
    params[:bootcamp]
    params.require(:bootcamp).permit(:name, :startdate, :enddate, :description, :closingdate)
  end

end
