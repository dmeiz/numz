class Tag < DataMapper::Base
  property :name, :string
  has_and_belongs_to_many :nums
end
