class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new
    @role.title = params[:title]
    @role.eligibility = params[:eligibility]
    @role.time_commitment = params[:time_commitment]
    @role.description = params[:description]
    @role.available = params[:available]
    @role.club_id = params[:club_id]

    if @role.save
      redirect_to "/roles", :notice => "Role created successfully."
    else
      render 'new'
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    @role.title = params[:title]
    @role.eligibility = params[:eligibility]
    @role.time_commitment = params[:time_commitment]
    @role.description = params[:description]
    @role.available = params[:available]
    @role.club_id = params[:club_id]

    if @role.save
      redirect_to "/roles", :notice => "Role updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @role = Role.find(params[:id])

    @role.destroy

    redirect_to "/roles", :notice => "Role deleted."
  end
end
