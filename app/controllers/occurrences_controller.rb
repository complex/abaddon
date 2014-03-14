class OccurrencesController < ApplicationController

  respond_to :html

  def index

    event = Event.find params[:event_id]
    occurrence = Occurrence.new
    occurrences = Occurrence.where event: event

    @event = event
    @occurrence = occurrence
    @occurrences = occurrences

  end

  def show

    event = Event.find params[:event_id]
    occurrence = Occurrence.find params[:id]

    @event = event
    @occurrence = occurrence

  end

  def new
    redirect_to event_occurrences_path params[:event_id]
  end

  def edit

    event = Event.find params[:event_id]
    occurrence = Occurrence.find params[:id]

    @event = event
    @occurrence = occurrence

  end

  def create

    event = Event.find params[:event_id]
    occurrence = Occurrence.new occurrence_params

    occurrence.event = event
    occurrence.save

    respond_with occurrence, location: event_occurrences_path(event)

  end

  def update

    occurrence = Occurrence.find params[:id]
    occurrence.update_attributes occurrence_params

    respond_with occurrence, location: event_occurrences_path(event)

  end

  def destroy

    event = Event.find params[:event_id]
    occurrence = Occurrence.find params[:id]

    occurrence.destroy

    respond_with occurrence, location: event_occurrences_path(event)

  end


  private

  def occurrence_params
    params.require(:occurrence).permit :latitude, :longitude
  end

end
