json.set! :tasks do
  json.array! @logs do |log|
    json.extract! log, :id, :title, :thought, :feeling, :anger_stage, :action, :result, :angered_at, :created_at, :updated_at
  end
end
