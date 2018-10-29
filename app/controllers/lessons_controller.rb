class LessonsController < ApplicationController
    #http_basic_authenticate_with name: "admin", password: "hunter2", except: [:index, :show]
  def index
    @lesson = Lesson.all
    @titlebody = "Предметы"
  end

  def new
    @lesson = Lesson.new
  end
  
  def create
    #render plain: params[:dayweek].inspect
    @lesson = Lesson.new(post_params)
    @lesson.save
    redirect_to @lesson
  end
  
  def show
    @lesson = Lesson.find(params[:id])
  end
    
  def edit
    @lesson = Lesson.find(params[:id])
  end
  

  private def post_params
      params.require(:lesson).permit(:brief)
  end


end
