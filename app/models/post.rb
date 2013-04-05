class Post
include Mongoid::Document
  include Mongoid::Timestamps
  has_many :comments

    field :name, :type => String
      field :description, :type => String

  validates_presence_of :name, :message=> "name will mandatory"

end
