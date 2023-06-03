json.extract! person, :id, :surname, :forenames, :pronouns, :role_id, :hired_at, :terminated_at, :created_at, :updated_at
json.url person_url(person, format: :json)
