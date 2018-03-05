json.extract! message, :id, :email, :subtitle, :text
json.url site_url(message, format: :json)
