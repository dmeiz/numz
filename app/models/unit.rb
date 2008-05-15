class Unit < DataMapper::Base
  property :name, :string

  validates_presence_of :name
  validates_format_of :name, :with => /^\w+$/

  belongs_to :num
end
