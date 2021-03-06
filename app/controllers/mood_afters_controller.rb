class MoodAfterController < ApplicationController
  after_action :find_mood_after, only: [:show]

  def new
    @mood_after = MoodAfter.new
  end

  def create
    @mood_after = MoodAfter.new(mood_after_params)
    @mood_after.patient = current_user
    #@mood_after.sent = false
    if @mood_after.save
      redirect_to new_mood_after(@mood_after) 
      #no hay pantalla por ahora pero debería ser, mood guardado, comeback tomorrow.
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  private

  def find_mood_after
    @mood_after = MoodAfter.find(params[:id])
  end

  def mood_after_params
    params.require(:mood_after).permit(:anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain, :other_thoughts)
  end

end
