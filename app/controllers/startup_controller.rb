class StartupController < ApplicationController
	def index
	end
    
  def create
    @startup = Startup.new(user_params)
    @startup.save
    redirect_to user_path
  end

  def new
    @startup = Startup.new
  end

  def show
    @startup = Startup.find(params[:id])
  end




  private
    def user_params
      params.require(:startup).permit(:name,:image)
    end


end
