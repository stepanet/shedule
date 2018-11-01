class ShedulersController < ApplicationController
#  http_basic_authenticate_with name: "admin", password: "123456", except: [:index, :show]
  def index
    # @sheduler = Sheduler.all
     @dayweeks = Dayweek.all
    @titlebody = "Расписание всех уроков на неделю"
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
    #@path_to_shedulers = Sheduler.find(params[:id])

    if(@sheduler.update(post_params))
        redirect_to dayweek_path(@sheduler.dayweek)
    else
        render 'edit'
    end

end


  private def post_params
      params.require(:sheduler).permit(:dayweek_id, :numlesson_id, :lesson_id, :startlesson, :endlesson)
  end

end
