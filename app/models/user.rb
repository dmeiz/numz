class User < DataMapper::Base
  property :login, :string
  property :password, :string
end
