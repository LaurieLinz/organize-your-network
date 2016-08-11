json.extract! contact, :id, :first_name, :last_name, :email, :phone, :met_on_social_platform, :date_met, :availability, :skillset, :notes, :created_at, :updated_at
json.url contact_url(contact, format: :json)
