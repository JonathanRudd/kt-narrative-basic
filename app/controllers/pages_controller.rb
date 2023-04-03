class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  before_action :set_killteam, only: %i[ show edit update destroy ]

  # GET /killteams or /killteams.json

  # doesn't seem to do anything? how to get function working on pages?
  def home
    @killteams = Killteam.all
  end

end
