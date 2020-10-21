class UserCertificate < ApplicationRecord
  belongs_to :user
  belongs_to :certificate
end
