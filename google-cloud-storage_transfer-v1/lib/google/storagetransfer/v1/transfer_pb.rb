# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/storagetransfer/v1/transfer.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/storagetransfer/v1/transfer_types_pb'


descriptor_data = "\n(google/storagetransfer/v1/transfer.proto\x12\x19google.storagetransfer.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a.google/storagetransfer/v1/transfer_types.proto\"9\n\x1eGetGoogleServiceAccountRequest\x12\x17\n\nproject_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\"]\n\x18\x43reateTransferJobRequest\x12\x41\n\x0ctransfer_job\x18\x01 \x01(\x0b\x32&.google.storagetransfer.v1.TransferJobB\x03\xe0\x41\x02\"\xd1\x01\n\x18UpdateTransferJobRequest\x12\x15\n\x08job_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nproject_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x0ctransfer_job\x18\x03 \x01(\x0b\x32&.google.storagetransfer.v1.TransferJobB\x03\xe0\x41\x02\x12\x42\n\x1eupdate_transfer_job_field_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"G\n\x15GetTransferJobRequest\x12\x15\n\x08job_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nproject_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"J\n\x18\x44\x65leteTransferJobRequest\x12\x15\n\x08job_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nproject_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"U\n\x17ListTransferJobsRequest\x12\x13\n\x06\x66ilter\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x05 \x01(\t\"r\n\x18ListTransferJobsResponse\x12=\n\rtransfer_jobs\x18\x01 \x03(\x0b\x32&.google.storagetransfer.v1.TransferJob\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"2\n\x1dPauseTransferOperationRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"3\n\x1eResumeTransferOperationRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"G\n\x15RunTransferJobRequest\x12\x15\n\x08job_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nproject_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\x8c\x01\n\x16\x43reateAgentPoolRequest\x12\x17\n\nproject_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12=\n\nagent_pool\x18\x02 \x01(\x0b\x32$.google.storagetransfer.v1.AgentPoolB\x03\xe0\x41\x02\x12\x1a\n\ragent_pool_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\x88\x01\n\x16UpdateAgentPoolRequest\x12=\n\nagent_pool\x18\x01 \x01(\x0b\x32$.google.storagetransfer.v1.AgentPoolB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"(\n\x13GetAgentPoolRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"+\n\x16\x44\x65leteAgentPoolRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"g\n\x15ListAgentPoolsRequest\x12\x17\n\nproject_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"l\n\x16ListAgentPoolsResponse\x12\x39\n\x0b\x61gent_pools\x18\x01 \x03(\x0b\x32$.google.storagetransfer.v1.AgentPool\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\x91\x13\n\x16StorageTransferService\x12\xb5\x01\n\x17GetGoogleServiceAccount\x12\x39.google.storagetransfer.v1.GetGoogleServiceAccountRequest\x1a/.google.storagetransfer.v1.GoogleServiceAccount\".\x82\xd3\xe4\x93\x02(\x12&/v1/googleServiceAccounts/{project_id}\x12\x98\x01\n\x11\x43reateTransferJob\x12\x33.google.storagetransfer.v1.CreateTransferJobRequest\x1a&.google.storagetransfer.v1.TransferJob\"&\x82\xd3\xe4\x93\x02 \"\x10/v1/transferJobs:\x0ctransfer_job\x12\x9b\x01\n\x11UpdateTransferJob\x12\x33.google.storagetransfer.v1.UpdateTransferJobRequest\x1a&.google.storagetransfer.v1.TransferJob\")\x82\xd3\xe4\x93\x02#2\x1e/v1/{job_name=transferJobs/**}:\x01*\x12\x92\x01\n\x0eGetTransferJob\x12\x30.google.storagetransfer.v1.GetTransferJobRequest\x1a&.google.storagetransfer.v1.TransferJob\"&\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{job_name=transferJobs/**}\x12\x95\x01\n\x10ListTransferJobs\x12\x32.google.storagetransfer.v1.ListTransferJobsRequest\x1a\x33.google.storagetransfer.v1.ListTransferJobsResponse\"\x18\x82\xd3\xe4\x93\x02\x12\x12\x10/v1/transferJobs\x12\x9d\x01\n\x16PauseTransferOperation\x12\x38.google.storagetransfer.v1.PauseTransferOperationRequest\x1a\x16.google.protobuf.Empty\"1\x82\xd3\xe4\x93\x02+\"&/v1/{name=transferOperations/**}:pause:\x01*\x12\xa0\x01\n\x17ResumeTransferOperation\x12\x39.google.storagetransfer.v1.ResumeTransferOperationRequest\x1a\x16.google.protobuf.Empty\"2\x82\xd3\xe4\x93\x02,\"\'/v1/{name=transferOperations/**}:resume:\x01*\x12\xbd\x01\n\x0eRunTransferJob\x12\x30.google.storagetransfer.v1.RunTransferJobRequest\x1a\x1d.google.longrunning.Operation\"Z\x82\xd3\xe4\x93\x02\'\"\"/v1/{job_name=transferJobs/**}:run:\x01*\xca\x41*\n\x15google.protobuf.Empty\x12\x11TransferOperation\x12\x88\x01\n\x11\x44\x65leteTransferJob\x12\x33.google.storagetransfer.v1.DeleteTransferJobRequest\x1a\x16.google.protobuf.Empty\"&\x82\xd3\xe4\x93\x02 *\x1e/v1/{job_name=transferJobs/**}\x12\xcc\x01\n\x0f\x43reateAgentPool\x12\x31.google.storagetransfer.v1.CreateAgentPoolRequest\x1a$.google.storagetransfer.v1.AgentPool\"`\x82\xd3\xe4\x93\x02\x34\"&/v1/projects/{project_id=*}/agentPools:\nagent_pool\xda\x41#project_id,agent_pool,agent_pool_id\x12\xc6\x01\n\x0fUpdateAgentPool\x12\x31.google.storagetransfer.v1.UpdateAgentPoolRequest\x1a$.google.storagetransfer.v1.AgentPool\"Z\x82\xd3\xe4\x93\x02;2-/v1/{agent_pool.name=projects/*/agentPools/*}:\nagent_pool\xda\x41\x16\x61gent_pool,update_mask\x12\x97\x01\n\x0cGetAgentPool\x12..google.storagetransfer.v1.GetAgentPoolRequest\x1a$.google.storagetransfer.v1.AgentPool\"1\x82\xd3\xe4\x93\x02$\x12\"/v1/{name=projects/*/agentPools/*}\xda\x41\x04name\x12\xb2\x01\n\x0eListAgentPools\x12\x30.google.storagetransfer.v1.ListAgentPoolsRequest\x1a\x31.google.storagetransfer.v1.ListAgentPoolsResponse\";\x82\xd3\xe4\x93\x02(\x12&/v1/projects/{project_id=*}/agentPools\xda\x41\nproject_id\x12\x8f\x01\n\x0f\x44\x65leteAgentPool\x12\x31.google.storagetransfer.v1.DeleteAgentPoolRequest\x1a\x16.google.protobuf.Empty\"1\x82\xd3\xe4\x93\x02$*\"/v1/{name=projects/*/agentPools/*}\xda\x41\x04name\x1aR\xca\x41\x1estoragetransfer.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xef\x01\n#com.google.storagetransfer.v1.protoB\rTransferProtoZMcloud.google.com/go/storagetransfer/apiv1/storagetransferpb;storagetransferpb\xf8\x01\x01\xaa\x02\x1fGoogle.Cloud.StorageTransfer.V1\xca\x02\x1fGoogle\\Cloud\\StorageTransfer\\V1\xea\x02\"Google::Cloud::StorageTransfer::V1b\x06proto3"

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
    ["google.storagetransfer.v1.TransferJob", "google/storagetransfer/v1/transfer_types.proto"],
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
    module StorageTransfer
      module V1
        GetGoogleServiceAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GetGoogleServiceAccountRequest").msgclass
        CreateTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.CreateTransferJobRequest").msgclass
        UpdateTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.UpdateTransferJobRequest").msgclass
        GetTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GetTransferJobRequest").msgclass
        DeleteTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.DeleteTransferJobRequest").msgclass
        ListTransferJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListTransferJobsRequest").msgclass
        ListTransferJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListTransferJobsResponse").msgclass
        PauseTransferOperationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.PauseTransferOperationRequest").msgclass
        ResumeTransferOperationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ResumeTransferOperationRequest").msgclass
        RunTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.RunTransferJobRequest").msgclass
        CreateAgentPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.CreateAgentPoolRequest").msgclass
        UpdateAgentPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.UpdateAgentPoolRequest").msgclass
        GetAgentPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GetAgentPoolRequest").msgclass
        DeleteAgentPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.DeleteAgentPoolRequest").msgclass
        ListAgentPoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListAgentPoolsRequest").msgclass
        ListAgentPoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListAgentPoolsResponse").msgclass
      end
    end
  end
end
