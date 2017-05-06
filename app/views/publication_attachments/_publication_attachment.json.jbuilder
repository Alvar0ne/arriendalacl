json.extract! publication_attachment, :id, :publication_id, :avatar, :created_at, :updated_at
json.url publication_attachment_url(publication_attachment, format: :json)
