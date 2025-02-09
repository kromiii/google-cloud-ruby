# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/privatecatalog/v1beta1/private_catalog.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n9google/cloud/privatecatalog/v1beta1/private_catalog.proto\x12#google.cloud.privatecatalog.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"d\n\x15SearchCatalogsRequest\x12\x15\n\x08resource\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05query\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"q\n\x16SearchCatalogsResponse\x12>\n\x08\x63\x61talogs\x18\x01 \x03(\x0b\x32,.google.cloud.privatecatalog.v1beta1.Catalog\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"d\n\x15SearchProductsRequest\x12\x15\n\x08resource\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05query\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"q\n\x16SearchProductsResponse\x12>\n\x08products\x18\x01 \x03(\x0b\x32,.google.cloud.privatecatalog.v1beta1.Product\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"i\n\x15SearchVersionsRequest\x12\x15\n\x08resource\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05query\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"q\n\x16SearchVersionsResponse\x12>\n\x08versions\x18\x01 \x03(\x0b\x32,.google.cloud.privatecatalog.v1beta1.Version\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x82\x02\n\x07\x43\x61talog\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:C\xea\x41@\n*cloudprivatecatalog.googleapis.com/Catalog\x12\x12\x63\x61talogs/{catalog}\"\x8c\x03\n\x07Product\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nasset_type\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x39\n\x10\x64isplay_metadata\x18\x03 \x01(\x0b\x32\x17.google.protobuf.StructB\x06\xe0\x41\x02\xe0\x41\x03\x12\x15\n\x08icon_uri\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12R\n\x10\x61sset_references\x18\n \x03(\x0b\x32\x33.google.cloud.privatecatalog.v1beta1.AssetReferenceB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:C\xea\x41@\n*cloudprivatecatalog.googleapis.com/Product\x12\x12products/{product}\"\xde\x05\n\x0e\x41ssetReference\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12@\n\x06inputs\x18\x06 \x01(\x0b\x32+.google.cloud.privatecatalog.v1beta1.InputsB\x03\xe0\x41\x03\x12h\n\x11validation_status\x18\x07 \x01(\x0e\x32H.google.cloud.privatecatalog.v1beta1.AssetReference.AssetValidationStateB\x03\xe0\x41\x03\x12@\n\x14validation_operation\x18\x08 \x01(\x0b\x32\x1d.google.longrunning.OperationB\x03\xe0\x41\x03\x12\x14\n\x05\x61sset\x18\n \x01(\tB\x03\xe0\x41\x03H\x00\x12\x19\n\x08gcs_path\x18\x0b \x01(\tB\x05\x18\x01\xe0\x41\x03H\x00\x12I\n\ngit_source\x18\x0f \x01(\x0b\x32..google.cloud.privatecatalog.v1beta1.GitSourceB\x03\xe0\x41\x03H\x00\x12G\n\ngcs_source\x18\x10 \x01(\x0b\x32..google.cloud.privatecatalog.v1beta1.GcsSourceB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x07version\x18\x0e \x01(\tB\x02\x18\x01\"c\n\x14\x41ssetValidationState\x12&\n\"ASSET_VALIDATION_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\t\n\x05VALID\x10\x02\x12\x0b\n\x07INVALID\x10\x03\x42\x08\n\x06source\":\n\x06Inputs\x12\x30\n\nparameters\x18\x01 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x03\"q\n\tGcsSource\x12\x15\n\x08gcs_path\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\ngeneration\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"`\n\tGitSource\x12\x0c\n\x04repo\x18\x01 \x01(\t\x12\x0b\n\x03\x64ir\x18\x02 \x01(\t\x12\x10\n\x06\x63ommit\x18\x03 \x01(\tH\x00\x12\x10\n\x06\x62ranch\x18\x04 \x01(\tH\x00\x12\r\n\x03tag\x18\x05 \x01(\tH\x00\x42\x05\n\x03ref\"\xba\x02\n\x07Version\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12+\n\x05\x61sset\x18\x03 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:i\xea\x41\x66\n*cloudprivatecatalog.googleapis.com/Version\x12\x38\x63\x61talogs/{catalog}/products/{product}/versions/{version}2\xf2\x07\n\x0ePrivateCatalog\x12\xab\x02\n\x0eSearchCatalogs\x12:.google.cloud.privatecatalog.v1beta1.SearchCatalogsRequest\x1a;.google.cloud.privatecatalog.v1beta1.SearchCatalogsResponse\"\x9f\x01\x82\xd3\xe4\x93\x02\x98\x01\x12./v1beta1/{resource=projects/*}/catalogs:searchZ5\x12\x33/v1beta1/{resource=organizations/*}/catalogs:searchZ/\x12-/v1beta1/{resource=folders/*}/catalogs:search\x12\xab\x02\n\x0eSearchProducts\x12:.google.cloud.privatecatalog.v1beta1.SearchProductsRequest\x1a;.google.cloud.privatecatalog.v1beta1.SearchProductsResponse\"\x9f\x01\x82\xd3\xe4\x93\x02\x98\x01\x12./v1beta1/{resource=projects/*}/products:searchZ5\x12\x33/v1beta1/{resource=organizations/*}/products:searchZ/\x12-/v1beta1/{resource=folders/*}/products:search\x12\xab\x02\n\x0eSearchVersions\x12:.google.cloud.privatecatalog.v1beta1.SearchVersionsRequest\x1a;.google.cloud.privatecatalog.v1beta1.SearchVersionsResponse\"\x9f\x01\x82\xd3\xe4\x93\x02\x98\x01\x12./v1beta1/{resource=projects/*}/versions:searchZ5\x12\x33/v1beta1/{resource=organizations/*}/versions:searchZ/\x12-/v1beta1/{resource=folders/*}/versions:search\x1aV\xca\x41\"cloudprivatecatalog.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x86\x02\n\'com.google.cloud.privatecatalog.v1beta1B\x13PrivateCatalogProtoP\x01ZOcloud.google.com/go/privatecatalog/apiv1beta1/privatecatalogpb;privatecatalogpb\xaa\x02#Google.Cloud.PrivateCatalog.V1Beta1\xca\x02#Google\\Cloud\\PrivateCatalog\\V1beta1\xea\x02&Google::Cloud::PrivateCatalog::V1beta1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.longrunning.Operation", "google/longrunning/operations.proto"],
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
    module PrivateCatalog
      module V1beta1
        SearchCatalogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchCatalogsRequest").msgclass
        SearchCatalogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchCatalogsResponse").msgclass
        SearchProductsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchProductsRequest").msgclass
        SearchProductsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchProductsResponse").msgclass
        SearchVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchVersionsRequest").msgclass
        SearchVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.SearchVersionsResponse").msgclass
        Catalog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.Catalog").msgclass
        Product = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.Product").msgclass
        AssetReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.AssetReference").msgclass
        AssetReference::AssetValidationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.AssetReference.AssetValidationState").enummodule
        Inputs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.Inputs").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.GcsSource").msgclass
        GitSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.GitSource").msgclass
        Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.privatecatalog.v1beta1.Version").msgclass
      end
    end
  end
end
