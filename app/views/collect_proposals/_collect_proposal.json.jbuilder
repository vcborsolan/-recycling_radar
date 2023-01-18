json.extract! collect_proposal, :id, :item_id, :user_id, :collection_date, :status, :created_at, :updated_at
json.url collect_proposal_url(collect_proposal, format: :json)
