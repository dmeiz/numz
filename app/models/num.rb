class Num < DataMapper::Base
  property :value, :float
  property :desc, :text
  property :relevant_at, :datetime
  property :relevant_to, :datetime
  property :link, :string, :length => 255

  validates_presence_of :value, :unit
  validates_numericality_of :value

  belongs_to :unit 
  #belongs_to :user
  has_and_belongs_to_many :tags

  def tags_as_s()
    s = ""
    tags.each_with_index do |tag, i|
      s << " " unless i == 0
      s << tag.name
    end
    s
  end
end
