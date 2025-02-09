# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1p4beta1/product_search.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/vision/v1p4beta1/geometry_pb'
require 'google/cloud/vision/v1p4beta1/product_search_service_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n2google/cloud/vision/v1p4beta1/product_search.proto\x12\x1dgoogle.cloud.vision.v1p4beta1\x1a\x19google/api/resource.proto\x1a,google/cloud/vision/v1p4beta1/geometry.proto\x1a:google/cloud/vision/v1p4beta1/product_search_service.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc1\x01\n\x13ProductSearchParams\x12\x42\n\rbounding_poly\x18\t \x01(\x0b\x32+.google.cloud.vision.v1p4beta1.BoundingPoly\x12:\n\x0bproduct_set\x18\x06 \x01(\tB%\xfa\x41\"\n vision.googleapis.com/ProductSet\x12\x1a\n\x12product_categories\x18\x07 \x03(\t\x12\x0e\n\x06\x66ilter\x18\x08 \x01(\t\"\xb2\x05\n\x14ProductSearchResults\x12.\n\nindex_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12K\n\x07results\x18\x05 \x03(\x0b\x32:.google.cloud.vision.v1p4beta1.ProductSearchResults.Result\x12\x62\n\x17product_grouped_results\x18\x06 \x03(\x0b\x32\x41.google.cloud.vision.v1p4beta1.ProductSearchResults.GroupedResult\x1a_\n\x06Result\x12\x37\n\x07product\x18\x01 \x01(\x0b\x32&.google.cloud.vision.v1p4beta1.Product\x12\r\n\x05score\x18\x02 \x01(\x02\x12\r\n\x05image\x18\x03 \x01(\t\x1aS\n\x10ObjectAnnotation\x12\x0b\n\x03mid\x18\x01 \x01(\t\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12\x0c\n\x04name\x18\x03 \x01(\t\x12\r\n\x05score\x18\x04 \x01(\x02\x1a\x82\x02\n\rGroupedResult\x12\x42\n\rbounding_poly\x18\x01 \x01(\x0b\x32+.google.cloud.vision.v1p4beta1.BoundingPoly\x12K\n\x07results\x18\x02 \x03(\x0b\x32:.google.cloud.vision.v1p4beta1.ProductSearchResults.Result\x12`\n\x12object_annotations\x18\x03 \x03(\x0b\x32\x44.google.cloud.vision.v1p4beta1.ProductSearchResults.ObjectAnnotationB~\n!com.google.cloud.vision.v1p4beta1B\x12ProductSearchProtoP\x01Z9cloud.google.com/go/vision/apiv1p4beta1/visionpb;visionpb\xf8\x01\x01\xa2\x02\x04GCVNb\x06proto3"

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
    ["google.cloud.vision.v1p4beta1.BoundingPoly", "google/cloud/vision/v1p4beta1/geometry.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.vision.v1p4beta1.Product", "google/cloud/vision/v1p4beta1/product_search_service.proto"],
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
    module Vision
      module V1p4beta1
        ProductSearchParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSearchParams").msgclass
        ProductSearchResults = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSearchResults").msgclass
        ProductSearchResults::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSearchResults.Result").msgclass
        ProductSearchResults::ObjectAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSearchResults.ObjectAnnotation").msgclass
        ProductSearchResults::GroupedResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSearchResults.GroupedResult").msgclass
      end
    end
  end
end
