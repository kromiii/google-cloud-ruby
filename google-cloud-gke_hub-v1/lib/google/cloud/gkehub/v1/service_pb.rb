# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkehub/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkehub/v1/feature_pb'
require 'google/cloud/gkehub/v1/membership_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n$google/cloud/gkehub/v1/service.proto\x12\x16google.cloud.gkehub.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a$google/cloud/gkehub/v1/feature.proto\x1a\'google/cloud/gkehub/v1/membership.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xaf\x01\n\x16ListMembershipsRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\x12 gkehub.googleapis.com/Membership\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"~\n\x17ListMembershipsResponse\x12\x35\n\tresources\x18\x01 \x03(\x0b\x32\".google.cloud.gkehub.v1.Membership\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"N\n\x14GetMembershipRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkehub.googleapis.com/Membership\"\xc3\x01\n\x17\x43reateMembershipRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\x12 gkehub.googleapis.com/Membership\x12\x1a\n\rmembership_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x08resource\x18\x03 \x01(\x0b\x32\".google.cloud.gkehub.v1.MembershipB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"~\n\x17\x44\x65leteMembershipRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkehub.googleapis.com/Membership\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x66orce\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\xdb\x01\n\x17UpdateMembershipRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkehub.googleapis.com/Membership\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x39\n\x08resource\x18\x03 \x01(\x0b\x32\".google.cloud.gkehub.v1.MembershipB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xf2\x01\n\x1eGenerateConnectManifestRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkehub.googleapis.com/Membership\x12\x16\n\tnamespace\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05proxy\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x14\n\x07version\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x17\n\nis_upgrade\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\x12\x15\n\x08registry\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12&\n\x19image_pull_secret_content\x18\x07 \x01(\x0c\x42\x03\xe0\x41\x01\"a\n\x1fGenerateConnectManifestResponse\x12>\n\x08manifest\x18\x01 \x03(\x0b\x32,.google.cloud.gkehub.v1.ConnectAgentResource\"X\n\x14\x43onnectAgentResource\x12.\n\x04type\x18\x01 \x01(\x0b\x32 .google.cloud.gkehub.v1.TypeMeta\x12\x10\n\x08manifest\x18\x02 \x01(\t\"-\n\x08TypeMeta\x12\x0c\n\x04kind\x18\x01 \x01(\t\x12\x13\n\x0b\x61pi_version\x18\x02 \x01(\t\"\x92\x01\n\x13ListFeaturesRequest\x12\x32\n\x06parent\x18\x01 \x01(\tB\"\xfa\x41\x1f\x12\x1dgkehub.googleapis.com/Feature\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"c\n\x14ListFeaturesResponse\x12\x32\n\tresources\x18\x01 \x03(\x0b\x32\x1f.google.cloud.gkehub.v1.Feature\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"E\n\x11GetFeatureRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dgkehub.googleapis.com/Feature\"\xa5\x01\n\x14\x43reateFeatureRequest\x12\x32\n\x06parent\x18\x01 \x01(\tB\"\xfa\x41\x1f\x12\x1dgkehub.googleapis.com/Feature\x12\x12\n\nfeature_id\x18\x02 \x01(\t\x12\x31\n\x08resource\x18\x03 \x01(\x0b\x32\x1f.google.cloud.gkehub.v1.Feature\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"p\n\x14\x44\x65leteFeatureRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dgkehub.googleapis.com/Feature\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xc0\x01\n\x14UpdateFeatureRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dgkehub.googleapis.com/Feature\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x31\n\x08resource\x18\x03 \x01(\x0b\x32\x1f.google.cloud.gkehub.v1.Feature\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"\xf9\x01\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rstatus_detail\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1d\n\x10\x63\x61ncel_requested\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xf0\x11\n\x06GkeHub\x12\xb4\x01\n\x0fListMemberships\x12..google.cloud.gkehub.v1.ListMembershipsRequest\x1a/.google.cloud.gkehub.v1.ListMembershipsResponse\"@\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/memberships\xda\x41\x06parent\x12\xa8\x01\n\x0cListFeatures\x12+.google.cloud.gkehub.v1.ListFeaturesRequest\x1a,.google.cloud.gkehub.v1.ListFeaturesResponse\"=\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/features\xda\x41\x06parent\x12\xa1\x01\n\rGetMembership\x12,.google.cloud.gkehub.v1.GetMembershipRequest\x1a\".google.cloud.gkehub.v1.Membership\">\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/memberships/*}\xda\x41\x04name\x12\x95\x01\n\nGetFeature\x12).google.cloud.gkehub.v1.GetFeatureRequest\x1a\x1f.google.cloud.gkehub.v1.Feature\";\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/features/*}\xda\x41\x04name\x12\xe8\x01\n\x10\x43reateMembership\x12/.google.cloud.gkehub.v1.CreateMembershipRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\x82\xd3\xe4\x93\x02;\"//v1/{parent=projects/*/locations/*}/memberships:\x08resource\xda\x41\x1dparent,resource,membership_id\xca\x41\x1f\n\nMembership\x12\x11OperationMetadata\x12\xd8\x01\n\rCreateFeature\x12,.google.cloud.gkehub.v1.CreateFeatureRequest\x1a\x1d.google.longrunning.Operation\"z\x82\xd3\xe4\x93\x02\x38\",/v1/{parent=projects/*/locations/*}/features:\x08resource\xda\x41\x1aparent,resource,feature_id\xca\x41\x1c\n\x07\x46\x65\x61ture\x12\x11OperationMetadata\x12\xcf\x01\n\x10\x44\x65leteMembership\x12/.google.cloud.gkehub.v1.DeleteMembershipRequest\x1a\x1d.google.longrunning.Operation\"k\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/memberships/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xc6\x01\n\rDeleteFeature\x12,.google.cloud.gkehub.v1.DeleteFeatureRequest\x1a\x1d.google.longrunning.Operation\"h\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/features/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xe3\x01\n\x10UpdateMembership\x12/.google.cloud.gkehub.v1.UpdateMembershipRequest\x1a\x1d.google.longrunning.Operation\"\x7f\x82\xd3\xe4\x93\x02;2//v1/{name=projects/*/locations/*/memberships/*}:\x08resource\xda\x41\x19name,resource,update_mask\xca\x41\x1f\n\nMembership\x12\x11OperationMetadata\x12\xd7\x01\n\rUpdateFeature\x12,.google.cloud.gkehub.v1.UpdateFeatureRequest\x1a\x1d.google.longrunning.Operation\"y\x82\xd3\xe4\x93\x02\x38\x32,/v1/{name=projects/*/locations/*/features/*}:\x08resource\xda\x41\x19name,resource,update_mask\xca\x41\x1c\n\x07\x46\x65\x61ture\x12\x11OperationMetadata\x12\xdb\x01\n\x17GenerateConnectManifest\x12\x36.google.cloud.gkehub.v1.GenerateConnectManifestRequest\x1a\x37.google.cloud.gkehub.v1.GenerateConnectManifestResponse\"O\x82\xd3\xe4\x93\x02I\x12G/v1/{name=projects/*/locations/*/memberships/*}:generateConnectManifest\x1aI\xca\x41\x15gkehub.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xae\x01\n\x1a\x63om.google.cloud.gkehub.v1B\x0cServiceProtoP\x01Z2cloud.google.com/go/gkehub/apiv1/gkehubpb;gkehubpb\xaa\x02\x16Google.Cloud.GkeHub.V1\xca\x02\x16Google\\Cloud\\GkeHub\\V1\xea\x02\x19Google::Cloud::GkeHub::V1b\x06proto3"

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
    ["google.cloud.gkehub.v1.Membership", "google/cloud/gkehub/v1/membership.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.gkehub.v1.Feature", "google/cloud/gkehub/v1/feature.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module GkeHub
      module V1
        ListMembershipsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.ListMembershipsRequest").msgclass
        ListMembershipsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.ListMembershipsResponse").msgclass
        GetMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.GetMembershipRequest").msgclass
        CreateMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.CreateMembershipRequest").msgclass
        DeleteMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.DeleteMembershipRequest").msgclass
        UpdateMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.UpdateMembershipRequest").msgclass
        GenerateConnectManifestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.GenerateConnectManifestRequest").msgclass
        GenerateConnectManifestResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.GenerateConnectManifestResponse").msgclass
        ConnectAgentResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.ConnectAgentResource").msgclass
        TypeMeta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.TypeMeta").msgclass
        ListFeaturesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.ListFeaturesRequest").msgclass
        ListFeaturesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.ListFeaturesResponse").msgclass
        GetFeatureRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.GetFeatureRequest").msgclass
        CreateFeatureRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.CreateFeatureRequest").msgclass
        DeleteFeatureRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.DeleteFeatureRequest").msgclass
        UpdateFeatureRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.UpdateFeatureRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.OperationMetadata").msgclass
      end
    end
  end
end
