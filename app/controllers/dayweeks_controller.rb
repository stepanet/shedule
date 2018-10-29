class DayweeksController < ApplicationController
  #http_basic_authenticate_with name: "admin", password: "hunter2", except: [:index, :show]
  
  def index
    @dayweek = Dayweek.all
    @titlebody = "Дни недели"
  end

  def new
    @dayweek = Dayweek.new
  end
  
  def create
    #render plain: params[:dayweek].inspect
    @dayweek = Dayweek.new(post_params)
    @dayweek.save
    redirect_to @dayweek
  end
  
  def show
    @dayweek = Dayweek.find(params[:id])
  end
    
  def edit
    @dayweek = Dayweek.find(params[:id])
  end
  

  private def post_params
      params.require(:dayweek).permit(:brief)
  end
  
end