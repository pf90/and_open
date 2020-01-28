json.extract! member, :id, :name, :original_url, :short_url, :created_at, :updated_at
json.url member_url(member, format: :json)
