# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: pqstream.proto for package 'pqs'

require 'grpc'
require 'pqstream_pb'

module Pqs
  module PQStream
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'pqs.PQStream'

      # Listen responds with a stream of database operations.
      rpc :Listen, ListenRequest, stream(Event)
    end

    Stub = Service.rpc_stub_class
  end
end
