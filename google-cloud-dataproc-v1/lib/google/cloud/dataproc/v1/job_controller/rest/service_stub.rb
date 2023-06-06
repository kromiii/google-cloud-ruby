# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/dataproc/v1/jobs_pb"

module Google
  module Cloud
    module Dataproc
      module V1
        module JobController
          module Rest
            ##
            # REST service stub for the JobController service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                             numeric_enums: true,
                                                             raise_faraday_errors: false
              end

              ##
              # Baseline implementation for the submit_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::SubmitJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::Job]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::Job]
              #   A result object deserialized from the server's reply
              def submit_job request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_submit_job_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Dataproc::V1::Job.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the submit_job_as_operation REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::SubmitJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def submit_job_as_operation request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_submit_job_as_operation_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the get_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::GetJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::Job]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::Job]
              #   A result object deserialized from the server's reply
              def get_job request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_job_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Dataproc::V1::Job.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the list_jobs REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::ListJobsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::ListJobsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::ListJobsResponse]
              #   A result object deserialized from the server's reply
              def list_jobs request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_jobs_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Dataproc::V1::ListJobsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the update_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::UpdateJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::Job]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::Job]
              #   A result object deserialized from the server's reply
              def update_job request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_job_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Dataproc::V1::Job.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the cancel_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::CancelJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::Job]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::Job]
              #   A result object deserialized from the server's reply
              def cancel_job request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_cancel_job_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Dataproc::V1::Job.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the delete_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::DeleteJobRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #   A result object deserialized from the server's reply
              def delete_job request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_delete_job_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the submit_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::SubmitJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_submit_job_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs:submit",
                                                          body: "*",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the submit_job_as_operation REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::SubmitJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_submit_job_as_operation_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs:submitAsOperation",
                                                          body: "*",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::GetJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_job_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs/{job_id}",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["job_id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_jobs REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::ListJobsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_jobs_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::UpdateJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_job_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs/{job_id}",
                                                          body: "job",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["job_id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the cancel_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::CancelJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_cancel_job_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs/{job_id}:cancel",
                                                          body: "*",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["job_id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete_job REST call
              #
              # @param request_pb [::Google::Cloud::Dataproc::V1::DeleteJobRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_delete_job_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/v1/projects/{project_id}/regions/{region}/jobs/{job_id}",
                                                          matches: [
                                                            ["project_id", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["job_id", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
