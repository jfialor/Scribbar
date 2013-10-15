class Note < ActiveRecord::Base
  belongs_to :notecollection
  validates :name, presence: true, uniqueness: true
  validates :body, length: {minimum: 20}

end
