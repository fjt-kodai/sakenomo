class UsersController < ApplicationController

  def show
    @organized_events = Event.where('date >= ? and organizer_id = ?', Date.today, current_user.id).limit(5)
    @participating_events = current_user.events.where('date >= ?', Date.today).limit(5)
    @events = Event.where('date >= ?', Date.today).limit(5)
    @events_all = Event.all
    gon.user_id = current_user.id
  end

  def edit
  end

  def update
    @user_before = current_user.dup
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
