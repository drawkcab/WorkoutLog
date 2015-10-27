class ExcercisesController < ApplicationController
before_action :set_excercise, only: [:show, :edit, :update, :destroy]
 def index
   @excercises = Excercise.all
 end

 def show

 end

 def new
   @excercise = Excercise.new
 end

 def create

    @excercise = Excercise.new(excercise_params)

    if @excercise.save
      flash[:success] = "Added!"
      redirect_to(:back)
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @excercise.update(excercise_params)
        format.html { redirect_to @excercise, notice: 'Excercise was successfully updated.' }
        format.json { render @excercise, status: :ok, location: @excercise }
      else
        format.html { render :edit }
        format.json { render json: @excercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @excercise.destroy
   respond_to do |format|
     format.html { redirect_to excercises_url, notice: 'Excercise was successfully destroyed.' }
     format.json { head :no_content }
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_excercise
     @excercise = Excercise.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def excercise_params
     params.require(:excercise).permit(:name, :set, :reps, :workout_id, :weight)
   end


end
