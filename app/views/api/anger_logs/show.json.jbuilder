json.set! :task do
  json.extract! @log, :id, :title, :thought, :feeling, :anger_stage, :action, :result, :angered_at, :created_at, :updated_at
end
