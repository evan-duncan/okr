# frozen_string_literal: true

class ObjectivesController < ApplicationController
  before_action :set_objective, only: %i[show edit update destroy]

  # GET /objectives
  # GET /objectives.json
  def index
    @objectives = Objective.all
  end

  # GET /objectives/1
  # GET /objectives/1.json
  def show; end

  # GET /objectives/new
  def new
    @objective = Objective.new
  end

  # GET /objectives/1/edit
  def edit; end

  # POST /objectives
  # POST /objectives.json
  def create
    @objective = Objective.new(objective_params)

    respond_to do |format|
      if @objective.save
        format.html do
          redirect_to @objective,
                      notice: 'Objective was successfully created.'
        end
        format.json do
          render :show,
                 status: :created,
                 location: @objective
        end
      else
        format.html { render :new }
        format.json do
          render json: @objective.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /objectives/1
  # PATCH/PUT /objectives/1.json
  def update
    respond_to do |format|
      if @objective.update(objective_params)
        format.html do
          redirect_to @objective,
                      notice: 'Objective was successfully updated.'
        end
        format.json do
          render :show,
                 status: :ok,
                 location: @objective
        end
      else
        format.html { render :edit }
        format.json do
          render json: @objective.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /objectives/1
  # DELETE /objectives/1.json
  def destroy
    @objective.destroy
    respond_to do |format|
      format.html do
        redirect_to objectives_url,
                    notice: 'Objective was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_objective
    @objective = Objective.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def objective_params
    params.fetch(:objective, {})
  end
end
