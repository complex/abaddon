class EventsController < ApplicationController

  respond_to :html

  def index

    events = Event.all
    event = Event.new

    @events = events
    @event = event

  end

  def show
    redirect_to event_occurrences_path params[:id]
  end

  def new
    redirect_to events_path
  end

  def edit

    event = Event.find params[:id]

    @event = event

  end

  def create

    event = Event.new event_params
    event.save

    respond_with event

  end

  def update

    event = Event.find params[:id]
    event.update_attributes event_params

    respond_with event

  end

  def destroy

    event = Event.find params[:id]
    event.destroy

    respond_with event

  end

  private

  def event_params
    params.require(:event).permit :title
  end

end
