class CollectProposal < ApplicationRecord
  belongs_to :item
  belongs_to :user

  enum status: %i[pending accepted refused]
end
