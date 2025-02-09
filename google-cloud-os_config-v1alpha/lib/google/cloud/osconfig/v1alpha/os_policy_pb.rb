# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1alpha/os_policy.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n-google/cloud/osconfig/v1alpha/os_policy.proto\x12\x1dgoogle.cloud.osconfig.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\"\x84#\n\x08OSPolicy\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12?\n\x04mode\x18\x03 \x01(\x0e\x32,.google.cloud.osconfig.v1alpha.OSPolicy.ModeB\x03\xe0\x41\x02\x12S\n\x0fresource_groups\x18\x04 \x03(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.ResourceGroupB\x03\xe0\x41\x02\x12%\n\x1d\x61llow_no_resource_group_match\x18\x05 \x01(\x08\x1a\x35\n\x08OSFilter\x12\x15\n\ros_short_name\x18\x01 \x01(\t\x12\x12\n\nos_version\x18\x02 \x01(\t\x1a\x41\n\x0fInventoryFilter\x12\x1a\n\ros_short_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\nos_version\x18\x02 \x01(\t\x1a\xe2\x1d\n\x08Resource\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12O\n\x03pkg\x18\x02 \x01(\x0b\x32@.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResourceH\x00\x12Y\n\nrepository\x18\x03 \x01(\x0b\x32\x43.google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResourceH\x00\x12M\n\x04\x65xec\x18\x04 \x01(\x0b\x32=.google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResourceH\x00\x12M\n\x04\x66ile\x18\x05 \x01(\x0b\x32=.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileResourceH\x00\x1a\xd0\x02\n\x04\x46ile\x12N\n\x06remote\x18\x01 \x01(\x0b\x32<.google.cloud.osconfig.v1alpha.OSPolicy.Resource.File.RemoteH\x00\x12H\n\x03gcs\x18\x02 \x01(\x0b\x32\x39.google.cloud.osconfig.v1alpha.OSPolicy.Resource.File.GcsH\x00\x12\x14\n\nlocal_path\x18\x03 \x01(\tH\x00\x12\x16\n\x0e\x61llow_insecure\x18\x04 \x01(\x08\x1a\x33\n\x06Remote\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\x0fsha256_checksum\x18\x02 \x01(\t\x1a\x43\n\x03Gcs\x12\x13\n\x06\x62ucket\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x06object\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\ngeneration\x18\x03 \x01(\x03\x42\x06\n\x04type\x1a\xd9\t\n\x0fPackageResource\x12i\n\rdesired_state\x18\x01 \x01(\x0e\x32M.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.DesiredStateB\x03\xe0\x41\x02\x12S\n\x03\x61pt\x18\x02 \x01(\x0b\x32\x44.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.APTH\x00\x12S\n\x03\x64\x65\x62\x18\x03 \x01(\x0b\x32\x44.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.DebH\x00\x12S\n\x03yum\x18\x04 \x01(\x0b\x32\x44.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.YUMH\x00\x12Y\n\x06zypper\x18\x05 \x01(\x0b\x32G.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.ZypperH\x00\x12S\n\x03rpm\x18\x06 \x01(\x0b\x32\x44.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.RPMH\x00\x12Y\n\x06googet\x18\x07 \x01(\x0b\x32G.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.GooGetH\x00\x12S\n\x03msi\x18\x08 \x01(\x0b\x32\x44.google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.MSIH\x00\x1a\x64\n\x03\x44\x65\x62\x12J\n\x06source\x18\x01 \x01(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileB\x03\xe0\x41\x02\x12\x11\n\tpull_deps\x18\x02 \x01(\x08\x1a\x18\n\x03\x41PT\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x64\n\x03RPM\x12J\n\x06source\x18\x01 \x01(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileB\x03\xe0\x41\x02\x12\x11\n\tpull_deps\x18\x02 \x01(\x08\x1a\x18\n\x03YUM\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x1b\n\x06Zypper\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x1b\n\x06GooGet\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x65\n\x03MSI\x12J\n\x06source\x18\x01 \x01(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileB\x03\xe0\x41\x02\x12\x12\n\nproperties\x18\x02 \x03(\t\"I\n\x0c\x44\x65siredState\x12\x1d\n\x19\x44\x45SIRED_STATE_UNSPECIFIED\x10\x00\x12\r\n\tINSTALLED\x10\x01\x12\x0b\n\x07REMOVED\x10\x02\x42\x10\n\x0esystem_package\x1a\xd1\x07\n\x12RepositoryResource\x12`\n\x03\x61pt\x18\x01 \x01(\x0b\x32Q.google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.AptRepositoryH\x00\x12`\n\x03yum\x18\x02 \x01(\x0b\x32Q.google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.YumRepositoryH\x00\x12\x66\n\x06zypper\x18\x03 \x01(\x0b\x32T.google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.ZypperRepositoryH\x00\x12`\n\x03goo\x18\x04 \x01(\x0b\x32Q.google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.GooRepositoryH\x00\x1a\xa3\x02\n\rAptRepository\x12x\n\x0c\x61rchive_type\x18\x01 \x01(\x0e\x32].google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveTypeB\x03\xe0\x41\x02\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0c\x64istribution\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\ncomponents\x18\x04 \x03(\tB\x03\xe0\x41\x02\x12\x0f\n\x07gpg_key\x18\x05 \x01(\t\"A\n\x0b\x41rchiveType\x12\x1c\n\x18\x41RCHIVE_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03\x44\x45\x42\x10\x01\x12\x0b\n\x07\x44\x45\x42_SRC\x10\x02\x1a_\n\rYumRepository\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x15\n\x08\x62\x61se_url\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08gpg_keys\x18\x04 \x03(\t\x1a\x62\n\x10ZypperRepository\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x15\n\x08\x62\x61se_url\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08gpg_keys\x18\x04 \x03(\t\x1a\x34\n\rGooRepository\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03url\x18\x02 \x01(\tB\x03\xe0\x41\x02\x42\x0c\n\nrepository\x1a\x8d\x04\n\x0c\x45xecResource\x12Y\n\x08validate\x18\x01 \x01(\x0b\x32\x42.google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource.ExecB\x03\xe0\x41\x02\x12S\n\x07\x65nforce\x18\x02 \x01(\x0b\x32\x42.google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource.Exec\x1a\xcc\x02\n\x04\x45xec\x12\x45\n\x04\x66ile\x18\x01 \x01(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileH\x00\x12\x10\n\x06script\x18\x02 \x01(\tH\x00\x12\x0c\n\x04\x61rgs\x18\x03 \x03(\t\x12h\n\x0binterpreter\x18\x04 \x01(\x0e\x32N.google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource.Exec.InterpreterB\x03\xe0\x41\x02\x12\x18\n\x10output_file_path\x18\x05 \x01(\t\"O\n\x0bInterpreter\x12\x1b\n\x17INTERPRETER_UNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\t\n\x05SHELL\x10\x02\x12\x0e\n\nPOWERSHELL\x10\x03\x42\x08\n\x06source\x1a\xd6\x02\n\x0c\x46ileResource\x12\x45\n\x04\x66ile\x18\x01 \x01(\x0b\x32\x35.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileH\x00\x12\x11\n\x07\x63ontent\x18\x02 \x01(\tH\x00\x12\x11\n\x04path\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12^\n\x05state\x18\x04 \x01(\x0e\x32J.google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileResource.DesiredStateB\x03\xe0\x41\x02\x12\x13\n\x0bpermissions\x18\x05 \x01(\t\"Z\n\x0c\x44\x65siredState\x12\x1d\n\x19\x44\x45SIRED_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PRESENT\x10\x01\x12\n\n\x06\x41\x42SENT\x10\x02\x12\x12\n\x0e\x43ONTENTS_MATCH\x10\x03\x42\x08\n\x06sourceB\x0f\n\rresource_type\x1a\xf6\x01\n\rResourceGroup\x12G\n\tos_filter\x18\x01 \x01(\x0b\x32\x30.google.cloud.osconfig.v1alpha.OSPolicy.OSFilterB\x02\x18\x01\x12R\n\x11inventory_filters\x18\x03 \x03(\x0b\x32\x37.google.cloud.osconfig.v1alpha.OSPolicy.InventoryFilter\x12H\n\tresources\x18\x02 \x03(\x0b\x32\x30.google.cloud.osconfig.v1alpha.OSPolicy.ResourceB\x03\xe0\x41\x02\"=\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nVALIDATION\x10\x01\x12\x0f\n\x0b\x45NFORCEMENT\x10\x02\x42\xd6\x01\n!com.google.cloud.osconfig.v1alphaB\rOsPolicyProtoP\x01Z=cloud.google.com/go/osconfig/apiv1alpha/osconfigpb;osconfigpb\xaa\x02\x1dGoogle.Cloud.OsConfig.V1Alpha\xca\x02\x1dGoogle\\Cloud\\OsConfig\\V1alpha\xea\x02 Google::Cloud::OsConfig::V1alphab\x06proto3"

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
    module OsConfig
      module V1alpha
        OSPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy").msgclass
        OSPolicy::OSFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.OSFilter").msgclass
        OSPolicy::InventoryFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.InventoryFilter").msgclass
        OSPolicy::Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource").msgclass
        OSPolicy::Resource::File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.File").msgclass
        OSPolicy::Resource::File::Remote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.File.Remote").msgclass
        OSPolicy::Resource::File::Gcs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.File.Gcs").msgclass
        OSPolicy::Resource::PackageResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource").msgclass
        OSPolicy::Resource::PackageResource::Deb = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.Deb").msgclass
        OSPolicy::Resource::PackageResource::APT = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.APT").msgclass
        OSPolicy::Resource::PackageResource::RPM = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.RPM").msgclass
        OSPolicy::Resource::PackageResource::YUM = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.YUM").msgclass
        OSPolicy::Resource::PackageResource::Zypper = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.Zypper").msgclass
        OSPolicy::Resource::PackageResource::GooGet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.GooGet").msgclass
        OSPolicy::Resource::PackageResource::MSI = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.MSI").msgclass
        OSPolicy::Resource::PackageResource::DesiredState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.PackageResource.DesiredState").enummodule
        OSPolicy::Resource::RepositoryResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource").msgclass
        OSPolicy::Resource::RepositoryResource::AptRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.AptRepository").msgclass
        OSPolicy::Resource::RepositoryResource::AptRepository::ArchiveType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType").enummodule
        OSPolicy::Resource::RepositoryResource::YumRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.YumRepository").msgclass
        OSPolicy::Resource::RepositoryResource::ZypperRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.ZypperRepository").msgclass
        OSPolicy::Resource::RepositoryResource::GooRepository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.RepositoryResource.GooRepository").msgclass
        OSPolicy::Resource::ExecResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource").msgclass
        OSPolicy::Resource::ExecResource::Exec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource.Exec").msgclass
        OSPolicy::Resource::ExecResource::Exec::Interpreter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter").enummodule
        OSPolicy::Resource::FileResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileResource").msgclass
        OSPolicy::Resource::FileResource::DesiredState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Resource.FileResource.DesiredState").enummodule
        OSPolicy::ResourceGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.ResourceGroup").msgclass
        OSPolicy::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicy.Mode").enummodule
      end
    end
  end
end
