class DayweeksController < ApplicationController
#before_action :authenticate_user!


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
  
  
  def destroy
        @dayweek = Dayweek.find(params[:id])
        @dayweek.destroy
        redirect_to dayweeks_path
  end
    
  def update
      @dayweek = Dayweek.find(params[:id])
        
      if(@dayweek.update(post_params))
          redirect_to dayweeks_path
      else 
          render 'edit'
      end
        
  end
  
  

  private def post_params
      params.require(:dayweek).permit(:brief)
  end
  
end