class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new
    @club.name = params[:name]
    @club.category_id = params[:category_id]

    if @club.save
      redirect_to "/clubs", :notice => "Club created successfully."
    else
      render 'new'
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])

    @club.name = params[:name]
    @club.category_id = params[:category_id]
    @club.category = params[:category]
    @club.role = params[:role]

    if @club.save
      redirect_to "/clubs", :notice => "Club updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @club = Club.find(params[:id])

    @club.destroy

    redirect_to "/clubs", :notice => "Club deleted."
  end
end
