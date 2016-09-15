json.extract! job, :id, :name, :description, :date_start, :date_end, :created_at, :updated_at
json.url job_url(job, format: :json)