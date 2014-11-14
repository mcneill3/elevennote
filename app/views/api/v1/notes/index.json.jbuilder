json.array!(@notes) do |notes|
  # json.extract! notes, :id, :title, :body_text, :body_html, :created_at, :updated_at
  json.id notes.id
  json.title notes.title
  json.url api_v1_note_url(notes, format: :json, api_key: params[:api_key])
end
