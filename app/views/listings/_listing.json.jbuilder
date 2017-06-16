json.extract! listing, :id, :name, :skill, :created_at, :updated_at
json.url listing_url(listing, format: :json)
