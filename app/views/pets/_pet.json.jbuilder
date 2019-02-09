json.extract! pet, :id, :pet_name, :kind, :created_at, :updated_at
json.url pet_url(pet, format: :json)
