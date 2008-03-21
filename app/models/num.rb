class Num < DataMapper::Base
  property :value, :float, :length => 20
  property :relevant_at, :datetime
  property :relevant_to, :datetime
  property :link, :string, :length => 255

  has_one :unit 
  belongs_to :user
end
