class Api::AngerLogsController < ApplicationController
  protect_from_forgery except: %w[create update destroy]

  def index
    @logs = AngerLog.order('angered_at DESC')
    render json: @logs
  end

  def show
    @log = AngerLog.find(params[:id])
    render json: @log
  end

  def create
    @log = AngerLog.new(anger_log_params)

    if @log.save
      render json: @log, status: :created
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  def update
    @log = AngerLog.find(params[:id])

    if @log.update(task_params)
      render json: @log, status: :ok
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @log = AngerLog.find(params[:id])

    if @log.destroy
      render json: @log, status: :ok
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  private

  def anger_log_params
    params.require(:anger_log).permit(
      :title, :thought, :feeling, :anger_stage,
      :action, :result, :angered_at
    )
  end
end
