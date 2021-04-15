json.extract! user, :id, :user_type, :document_type, :document, :name, :last_name, :phone1, :emission_date, :expiration_date, :email, :phone2, :created_at, :updated_at
json.url user_url(user, format: :json)
