class Url < ApplicationRecord
  belongs_to :user
  belongs_to :urls
end
