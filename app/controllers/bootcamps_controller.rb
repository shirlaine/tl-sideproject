class BootcampsController < ApplicationController

  def index
    @bootcamps = Bootcamp.all
  end

  def new
    @bootcamp = Bootcamp.new
  end

  def create
    @bootcamp = Bootcamp.new(bootcamp_params) #whitelisting certain params to be saved
    if @bootcamp.save
      redirect_to bootcamps_path
    else
      flash.now[:error]= "Your Data has not been saved, please check parameters"
      render :new
    end
  end

  def show
    @bootcamp = Bootcamp.find(params[:id])
  end

  private

  def bootcamp_params
    #params is a hash, only permit these keys to be passed to the params hash
    params[:bootcamp]
    params.require(:bootcamp).permit(:name, :startdate, :enddate, :description)
  end

end
