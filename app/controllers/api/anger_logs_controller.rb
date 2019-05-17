class Api::AngerLogsController < ApplicationController
  protect_from_forgery except: %w[create update]

  def index
    @logs = AngerLog.order('angered_at DESC')
  end

  def show
    @log = AngerLog.find(params[:id])
  end

  def create
    @log = AngerLog.new(anger_log_params)

    if @log.save
      render :show, status: :created
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  def update
    @log = AngerLog.find(params[:id])
    if @log.update(task_params)
      render :show, status: :ok
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
