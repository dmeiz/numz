class Num < DataMapper::Base
  property :value, :float
  property :relevant_at, :datetime
  property :relevant_to, :datetime
  property :link, :string

  has_one :unit 
  belongs_to :user
end
