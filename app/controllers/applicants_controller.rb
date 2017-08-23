class ApplicantsController < ApplicationController

def index
  @applicants = Applicant.all

end

def new
    redirect_to applicants_error_path if @Bootcamp = Bootcamp.last.closingdate.strftime("%m/%d/%Y") < Time.now.strftime("%m/%d/%Y")
    @applicant = Applicant.new

end

def create

  @applicant = Applicant.new(applicant_params)
  if @applicant.save
    flash[:notice]= "Your entry has been saved!"
    redirect_to applicants_path
  else
    flash.now[:error]= "Your Data has not been saved, please check parameters"
    render :new
  end
end

def error
end

private

def applicant_params
  params[:applicant]
  params.require(:applicant).permit(:name, :email, :bootcamp_type_ids => [])
end

end
