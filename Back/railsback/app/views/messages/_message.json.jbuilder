json.extract! message, :id, :email, :subject, :text
json.url site_url(message, format: :json)
