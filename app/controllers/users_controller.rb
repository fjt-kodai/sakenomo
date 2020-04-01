class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end
  
  def show
    @organized_events = Event.where('date >= ? and organizer_id = ?', Date.today, current_user.id).limit(5)
    @participating_events = current_user.events.where('date >= ?', Date.today).limit(5)
    @events = Event.where('date >= ?', Date.today).limit(5)
    @events_all = Event.all
    gon.user_id = current_user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :icon, :email, :password)
  end

end
