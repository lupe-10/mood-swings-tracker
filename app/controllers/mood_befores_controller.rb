class MoodBeforeController < ApplicationController

  def new
    @mood_before = MoodBefore.new
  end

  def create
    @mood_before = MoodBefore.new(mood_before_params)
    @mood_before.user = current_user
    @mood_before.sent = false # consultar bien si esta ligada a user o users_info
    if @mood_before.save
      redirect_to new_mood_before(@mood_before)
    else
      render :new
    end
  end

  private

  def mood_before_params
    params.require(:before_exercise).permit(:anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain, :other_thoughts)
  end

end
