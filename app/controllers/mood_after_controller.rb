class MoodAfterController < ApplicationController

  def new
    @mood_after = MoodAfter.new
  end

  def create
    @mood_after = MoodAfter.new(mood_after_params)
    @mood_after.user = current_user
    @mood_after.sent = false # consultar bien si esta ligada a user o users_info
    if @mood_after.save
      redirect_to new_mood_after(@mood_after)
    else
      render :new
    end
  end

  private

  def mood_after_params
    params.require(:mood_after).permit(:anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain, :other_thoughts)
  end

end
