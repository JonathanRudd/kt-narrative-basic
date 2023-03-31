class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  before_action :set_killteam, only: %i[ show edit update destroy ]

  # GET /killteams or /killteams.json


  def index
    @killteams = Killteam.all
  end

  def home
  end
end
