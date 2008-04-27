class Num < DataMapper::Base
  property :value, :float
  property :relevant_at, :datetime
  property :relevant_to, :datetime
  property :link, :string, :length => 255

  validates_presence_of :value
  validates_numericality_of :value

  #has_one :unit 
  #belongs_to :user
  has_and_belongs_to_many :tags
end
