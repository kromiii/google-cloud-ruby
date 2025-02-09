# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/oslogin/v1beta/oslogin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/oslogin/common/common_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n)google/cloud/oslogin/v1beta/oslogin.proto\x12\x1bgoogle.cloud.oslogin.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/oslogin/common/common.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xdd\x02\n\x0cLoginProfile\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x0eposix_accounts\x18\x02 \x03(\x0b\x32).google.cloud.oslogin.common.PosixAccount\x12U\n\x0fssh_public_keys\x18\x03 \x03(\x0b\x32<.google.cloud.oslogin.v1beta.LoginProfile.SshPublicKeysEntry\x12?\n\rsecurity_keys\x18\x05 \x03(\x0b\x32(.google.cloud.oslogin.v1beta.SecurityKey\x1a_\n\x12SshPublicKeysEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x38\n\x05value\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKey:\x02\x38\x01\"\xa0\x01\n\x19\x43reateSshPublicKeyRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x02\"V\n\x19\x44\x65letePosixAccountRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/PosixAccount\"V\n\x19\x44\x65leteSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\"\xaf\x01\n\x16GetLoginProfileRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1boslogin.googleapis.com/User\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x11\n\tsystem_id\x18\x03 \x01(\t\x12;\n\x04view\x18\x04 \x01(\x0e\x32-.google.cloud.oslogin.v1beta.LoginProfileView\"S\n\x16GetSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\"\xee\x01\n\x19ImportSshPublicKeyRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xfa\x41%\x12#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x02\x12\x12\n\nproject_id\x18\x03 \x01(\t\x12;\n\x04view\x18\x04 \x01(\x0e\x32-.google.cloud.oslogin.v1beta.LoginProfileView\"o\n\x1aImportSshPublicKeyResponse\x12@\n\rlogin_profile\x18\x01 \x01(\x0b\x32).google.cloud.oslogin.v1beta.LoginProfile\x12\x0f\n\x07\x64\x65tails\x18\x02 \x01(\t\"\xcf\x01\n\x19UpdateSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xd4\x01\n\x0bSecurityKey\x12\x12\n\npublic_key\x18\x01 \x01(\t\x12\x13\n\x0bprivate_key\x18\x02 \x01(\t\x12O\n\x14universal_two_factor\x18\x03 \x01(\x0b\x32/.google.cloud.oslogin.v1beta.UniversalTwoFactorH\x00\x12:\n\tweb_authn\x18\x04 \x01(\x0b\x32%.google.cloud.oslogin.v1beta.WebAuthnH\x00\x42\x0f\n\rprotocol_type\"$\n\x12UniversalTwoFactor\x12\x0e\n\x06\x61pp_id\x18\x01 \x01(\t\"\x19\n\x08WebAuthn\x12\r\n\x05rp_id\x18\x01 \x01(\t\"A\n\x17SignSshPublicKeyRequest\x12\x16\n\x0essh_public_key\x18\x01 \x01(\t\x12\x0e\n\x06parent\x18\x02 \x01(\t\"9\n\x18SignSshPublicKeyResponse\x12\x1d\n\x15signed_ssh_public_key\x18\x01 \x01(\t*S\n\x10LoginProfileView\x12\"\n\x1eLOGIN_PROFILE_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x10\n\x0cSECURITY_KEY\x10\x02\x32\xa9\x0e\n\x0eOsLoginService\x12\xcf\x01\n\x12\x43reateSshPublicKey\x12\x36.google.cloud.oslogin.v1beta.CreateSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"V\x82\xd3\xe4\x93\x02\x38\"&/v1beta/{parent=users/*}/sshPublicKeys:\x0essh_public_key\xda\x41\x15parent,ssh_public_key\x12\x96\x01\n\x12\x44\x65letePosixAccount\x12\x36.google.cloud.oslogin.v1beta.DeletePosixAccountRequest\x1a\x16.google.protobuf.Empty\"0\x82\xd3\xe4\x93\x02#*!/v1beta/{name=users/*/projects/*}\xda\x41\x04name\x12\x9b\x01\n\x12\x44\x65leteSshPublicKey\x12\x36.google.cloud.oslogin.v1beta.DeleteSshPublicKeyRequest\x1a\x16.google.protobuf.Empty\"5\x82\xd3\xe4\x93\x02(*&/v1beta/{name=users/*/sshPublicKeys/*}\xda\x41\x04name\x12\xa5\x01\n\x0fGetLoginProfile\x12\x33.google.cloud.oslogin.v1beta.GetLoginProfileRequest\x1a).google.cloud.oslogin.v1beta.LoginProfile\"2\x82\xd3\xe4\x93\x02%\x12#/v1beta/{name=users/*}/loginProfile\xda\x41\x04name\x12\xa8\x01\n\x0fGetSshPublicKey\x12\x33.google.cloud.oslogin.v1beta.GetSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"5\x82\xd3\xe4\x93\x02(\x12&/v1beta/{name=users/*/sshPublicKeys/*}\xda\x41\x04name\x12\x85\x02\n\x12ImportSshPublicKey\x12\x36.google.cloud.oslogin.v1beta.ImportSshPublicKeyRequest\x1a\x37.google.cloud.oslogin.v1beta.ImportSshPublicKeyResponse\"~\x82\xd3\xe4\x93\x02=\"+/v1beta/{parent=users/*}:importSshPublicKey:\x0essh_public_key\xda\x41\x15parent,ssh_public_key\xda\x41 parent,ssh_public_key,project_id\x12\xef\x01\n\x12UpdateSshPublicKey\x12\x36.google.cloud.oslogin.v1beta.UpdateSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"v\x82\xd3\xe4\x93\x02\x38\x32&/v1beta/{name=users/*/sshPublicKeys/*}:\x0essh_public_key\xda\x41\x13name,ssh_public_key\xda\x41\x1fname,ssh_public_key,update_mask\x12\xe0\x01\n\x10SignSshPublicKey\x12\x34.google.cloud.oslogin.v1beta.SignSshPublicKeyRequest\x1a\x35.google.cloud.oslogin.v1beta.SignSshPublicKeyResponse\"_\x82\xd3\xe4\x93\x02\x41\"</v1beta/{parent=users/*/projects/*/zones/*}:signSshPublicKey:\x01*\xda\x41\x15parent,ssh_public_key\x1a\xdd\x01\xca\x41\x16oslogin.googleapis.com\xd2\x41\xc0\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-only,https://www.googleapis.com/auth/compute,https://www.googleapis.com/auth/compute.readonlyB\xc9\x01\n\x1f\x63om.google.cloud.oslogin.v1betaB\x0cOsLoginProtoP\x01Z9cloud.google.com/go/oslogin/apiv1beta/osloginpb;osloginpb\xaa\x02\x1bGoogle.Cloud.OsLogin.V1Beta\xca\x02\x1bGoogle\\Cloud\\OsLogin\\V1beta\xea\x02\x1eGoogle::Cloud::OsLogin::V1betab\x06proto3"

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
    ["google.cloud.oslogin.common.PosixAccount", "google/cloud/oslogin/common/common.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module OsLogin
      module V1beta
        LoginProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.LoginProfile").msgclass
        CreateSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.CreateSshPublicKeyRequest").msgclass
        DeletePosixAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.DeletePosixAccountRequest").msgclass
        DeleteSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.DeleteSshPublicKeyRequest").msgclass
        GetLoginProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.GetLoginProfileRequest").msgclass
        GetSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.GetSshPublicKeyRequest").msgclass
        ImportSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.ImportSshPublicKeyRequest").msgclass
        ImportSshPublicKeyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.ImportSshPublicKeyResponse").msgclass
        UpdateSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.UpdateSshPublicKeyRequest").msgclass
        SecurityKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.SecurityKey").msgclass
        UniversalTwoFactor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.UniversalTwoFactor").msgclass
        WebAuthn = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.WebAuthn").msgclass
        SignSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.SignSshPublicKeyRequest").msgclass
        SignSshPublicKeyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.SignSshPublicKeyResponse").msgclass
        LoginProfileView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1beta.LoginProfileView").enummodule
      end
    end
  end
end
