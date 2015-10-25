class WorkoutsController < ActionController::Base
  before_action :find_workout, only: [:show, :edit, :update, :id, :destroy]
  def index
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def workout_params
    params.required(:workout).permit(:date, :workout, :mood, :length)
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end

end
