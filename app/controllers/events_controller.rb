class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy, :update]

  def index
    @events = Event.all
  end

  def edit
    
  end

  def show
    
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end
  def update
    
    @event.name = params[:event][:name]
    @event.description = params[:event][:description]
    @event.save
    redirect_to event_path
  end
  def new
    @event = Event.new
  end

  def create
    Event.create(name: params[:event][:name], description: params[:event][:description])

    redirect_to root_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
