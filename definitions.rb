require "protobuf/nats"
class EmailAlert
    required :string, :subject, 1
    required :string, :body, 2
    required :string, :recipient_email, 3
end



class Status
    required :string, :status, 1

end


class AlertService < ::Protobuf::Rpc::Service
    rpc :send_alert, Alert, Status
end