# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/run_asset_discovery_response.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\nHgoogle/cloud/securitycenter/v1p1beta1/run_asset_discovery_response.proto\x12%google.cloud.securitycenter.v1p1beta1\x1a\x1egoogle/protobuf/duration.proto\"\xee\x01\n\x19RunAssetDiscoveryResponse\x12U\n\x05state\x18\x01 \x01(\x0e\x32\x46.google.cloud.securitycenter.v1p1beta1.RunAssetDiscoveryResponse.State\x12+\n\x08\x64uration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"M\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tCOMPLETED\x10\x01\x12\x0e\n\nSUPERSEDED\x10\x02\x12\x0e\n\nTERMINATED\x10\x03\x42\xfb\x01\n)com.google.cloud.securitycenter.v1p1beta1P\x01ZQcloud.google.com/go/securitycenter/apiv1p1beta1/securitycenterpb;securitycenterpb\xaa\x02%Google.Cloud.SecurityCenter.V1P1Beta1\xca\x02%Google\\Cloud\\SecurityCenter\\V1p1beta1\xea\x02(Google::Cloud::SecurityCenter::V1p1beta1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module SecurityCenter
      module V1p1beta1
        RunAssetDiscoveryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.RunAssetDiscoveryResponse").msgclass
        RunAssetDiscoveryResponse::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.RunAssetDiscoveryResponse.State").enummodule
      end
    end
  end
end
