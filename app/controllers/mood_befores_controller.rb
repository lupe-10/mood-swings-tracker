class MoodBeforeController < ApplicationController
  before_action :find_mood_before, only: [:show]

  def new
    @mood_before = MoodBefore.new
  end

  def create
    @mood_before = MoodBefore.new(mood_before_params)
    @mood_before.patient = current_user
    #@mood_before.sent = false # consultar bien si esta ligada a user o users_info
    if @mood_before.save
      redirect_to new_mood_after(@mood_after)
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  private

  def find_mood_before
    @mood_before = MoodBefore.find(params[:id])
  end

  def mood_before_params
    params.require(:mood_before).permit(:anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain, :other_thoughts)
  end

end
