class RoomsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update]
    before_action :authenticate_user!, except: [:show]

    def index
      @events = current_user.events
    end

    def show; end

    def new
      @event = current_user.events.build
    end

    def create
      @event = current_user.events.build(event_params)

      if @event.save
        redirect_to @event, notice: "Event created"
      else
        render :new
      end
    end

    def edit; end

    def update
      if @event.update(event_params)
        redirect_to @event, notice: "Event updated"
      else
        render :edit
      end
    end

    private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params
        .require(:event)
        .permit(
          name:string description:text location:string price:decimal capacity:integer 
          includes_food:boolean includes_drinks:boolean starts_at:datetime ends_at:datetime
          active:boolean
          user:references
        )
    end


end
