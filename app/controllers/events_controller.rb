class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(name: params[:event][:name], description: params[:event][:description])

    redirect_to root_path
  end
end
