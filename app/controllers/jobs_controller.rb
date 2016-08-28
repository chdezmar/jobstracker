class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)
		@job.user_id = current_user.id
		if @job.save
			redirect_to '/jobs'
		else
			render 'new'
		end
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
   @job = Job.find(params[:id])
 end

 def update
  @job = Job.find(params[:id])
  @job.update(jobs_params)

  redirect_to "/jobs/#{@job.id}"
end


  def jobs_params
   params.require(:job).permit(:url, :position, :company, :rating, :status, :current_user)
 end

end
