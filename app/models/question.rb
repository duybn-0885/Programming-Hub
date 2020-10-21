class Question < ApplicationRecord
  belongs_to :questionable, polymorphic: true
end
