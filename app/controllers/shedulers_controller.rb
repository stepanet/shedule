class ShedulersController < ApplicationController
  def index
    @sheduler = Sheduler.all
    @titlebody = "Расписание"
  end

  def new
    @sheduler = Sheduler.new
  end

  def create
    #render plain: params[:post].inspect
    @sheduler = Sheduler.new(post_params)
    if(@sheduler.save)
        redirect_to shedulers_path
    else
        render 'new'
    end
  end

  def show
      @sheduler = Sheduler.find(params[:id])
  end

  def edit
      @sheduler = Sheduler.find(params[:id])
  end

  def destroy
    @sheduler = Sheduler.find(params[:id])
    @sheduler.destroy
    redirect_to shedulers_path
end

def update
    @sheduler = Sheduler.find(params[:id])

    if(@sheduler.update(post_params))
        redirect_to @sheduler
    else
        render 'edit'
    end

end


  private def post_params
      params.require(:sheduler).permit(:dayweek_id, :numlesson_id, :lesson_id, :startlesson, :endlesson)
  end

end
