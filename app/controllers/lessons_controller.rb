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
    #render plain: params[:lesson].inspect
    @lesson = Lesson.new(post_params)
    @lesson.save
    redirect_to lessons_path
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def destroy
        @lesson = Lesson.find(params[:id])
        @lesson.destroy
        redirect_to lessons_path
  end

  def update
      @lesson = Lesson.find(params[:id])

      if(@lesson.update(post_params))
          redirect_to lessons_path
      else
          render 'edit'
      end
  end


  private def post_params
      params.require(:lesson).permit(:brief)
  end


end
