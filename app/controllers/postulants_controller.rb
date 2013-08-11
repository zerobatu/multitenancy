class PostulantsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @postulant = Postulant.all
  end

  def show
    @postulant = Postulant.find(params[:id])
  end
end
