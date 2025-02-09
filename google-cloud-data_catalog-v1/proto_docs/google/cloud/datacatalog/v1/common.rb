# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module DataCatalog
      module V1
        # Entry metadata relevant only to the user and private to them.
        # @!attribute [rw] starred
        #   @return [::Boolean]
        #     True if the entry is starred by the user; false otherwise.
        # @!attribute [rw] star_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Set if the entry is starred; unset otherwise.
        class PersonalDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This enum lists all the systems that Data Catalog integrates with.
        module IntegratedSystem
          # Default unknown system.
          INTEGRATED_SYSTEM_UNSPECIFIED = 0

          # BigQuery.
          BIGQUERY = 1

          # Cloud Pub/Sub.
          CLOUD_PUBSUB = 2

          # Dataproc Metastore.
          DATAPROC_METASTORE = 3

          # Dataplex.
          DATAPLEX = 4

          # Cloud Spanner
          CLOUD_SPANNER = 6

          # Cloud Bigtable
          CLOUD_BIGTABLE = 7

          # Cloud Sql
          CLOUD_SQL = 8

          # Looker
          LOOKER = 9
        end

        # This enum describes all the systems that manage
        # Taxonomy and PolicyTag resources in DataCatalog.
        module ManagingSystem
          # Default value
          MANAGING_SYSTEM_UNSPECIFIED = 0

          # Dataplex.
          MANAGING_SYSTEM_DATAPLEX = 1

          # Other
          MANAGING_SYSTEM_OTHER = 2
        end
      end
    end
  end
end
