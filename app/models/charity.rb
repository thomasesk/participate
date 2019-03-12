class Charity < ApplicationRecord
  has_many :donations

  searchkick
end
