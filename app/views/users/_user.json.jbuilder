json.extract! user, :id, :name, :seller_title, :address, :phone, :email, :pass, :webpage, :account_type_id, :town_id, :tax_number, :created_at, :updated_at
json.url user_url(user, format: :json)
