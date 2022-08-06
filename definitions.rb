require "protobuf/nats"

class User < ::Protobuf::Message
    optional :int64, :id, 1
    optional :string, :username, 2
end

class UserService < ::Protobuf::Rpc::Service
    rpc :create, User, User
end