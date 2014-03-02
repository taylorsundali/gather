class GatheringsController < ApplicationController
  
  layout false
  
  def splash
    @test = [1,232,232,11,12,23]
  end

  def new
    @gathering = Gathering.new
  end

  def index
    @gathering = Gathering.order("name ASC")
  	#redirect_to(:action => 'show')
  end

  def create
    @gathering = Gathering.new(gathering_params)
    if @gathering.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def show
  end

  def delete
  end

  private

  def gathering_params
    params.require(:gathering).permit(:name, :event_date, :event_time, :location)
  end

end


