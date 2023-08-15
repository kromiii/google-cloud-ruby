# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Dialogflow
      module V2
        # Represents a conversation.
        # A conversation is an interaction between an agent, including live agents
        # and Dialogflow agents, and a support customer. Conversations can
        # include phone calls and text-based chat sessions.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The unique identifier of this conversation.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`.
        # @!attribute [r] lifecycle_state
        #   @return [::Google::Cloud::Dialogflow::V2::Conversation::LifecycleState]
        #     Output only. The current state of the Conversation.
        # @!attribute [rw] conversation_profile
        #   @return [::String]
        #     Required. The Conversation Profile to be used to configure this
        #     Conversation. This field cannot be updated.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversationProfiles/<Conversation Profile ID>`.
        # @!attribute [r] phone_number
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationPhoneNumber]
        #     Output only. It will not be empty if the conversation is to be connected
        #     over telephony.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the conversation was started.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the conversation was finished.
        # @!attribute [rw] conversation_stage
        #   @return [::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage]
        #     The stage of a conversation. It indicates whether the virtual agent or a
        #     human agent is handling the conversation.
        #
        #     If the conversation is created with the conversation profile that has
        #     Dialogflow config set, defaults to
        #     {::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage::VIRTUAL_AGENT_STAGE ConversationStage.VIRTUAL_AGENT_STAGE};
        #     Otherwise, defaults to
        #     {::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage::HUMAN_ASSIST_STAGE ConversationStage.HUMAN_ASSIST_STAGE}.
        #
        #     If the conversation is created with the conversation profile that has
        #     Dialogflow config set but explicitly sets conversation_stage to
        #     {::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage::HUMAN_ASSIST_STAGE ConversationStage.HUMAN_ASSIST_STAGE},
        #     it skips
        #     {::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage::VIRTUAL_AGENT_STAGE ConversationStage.VIRTUAL_AGENT_STAGE}
        #     stage and directly goes to
        #     {::Google::Cloud::Dialogflow::V2::Conversation::ConversationStage::HUMAN_ASSIST_STAGE ConversationStage.HUMAN_ASSIST_STAGE}.
        class Conversation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enumeration of the completion status of the conversation.
          module LifecycleState
            # Unknown.
            LIFECYCLE_STATE_UNSPECIFIED = 0

            # Conversation is currently open for media analysis.
            IN_PROGRESS = 1

            # Conversation has been completed.
            COMPLETED = 2
          end

          # Enumeration of the different conversation stages a conversation can be in.
          # Reference:
          # https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages
          module ConversationStage
            # Unknown. Should never be used after a conversation is successfully
            # created.
            CONVERSATION_STAGE_UNSPECIFIED = 0

            # The conversation should return virtual agent responses into the
            # conversation.
            VIRTUAL_AGENT_STAGE = 1

            # The conversation should not provide responses, just listen and provide
            # suggestions.
            HUMAN_ASSIST_STAGE = 2
          end
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#create_conversation Conversations.CreateConversation}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource identifier of the project creating the conversation.
        #     Format: `projects/<Project ID>/locations/<Location ID>`.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::Dialogflow::V2::Conversation]
        #     Required. The conversation to create.
        # @!attribute [rw] conversation_id
        #   @return [::String]
        #     Optional. Identifier of the conversation. Generally it's auto generated by
        #     Google. Only set it if you cannot wait for the response to return a
        #     auto-generated one to you.
        #
        #     The conversation ID must be compliant with the regression fomula
        #     `[a-zA-Z][a-zA-Z0-9_-]*` with the characters length in range of [3,64].
        #     If the field is provided, the caller is resposible for
        #     1. the uniqueness of the ID, otherwise the request will be rejected.
        #     2. the consistency for whether to use custom ID or not under a project to
        #     better ensure uniqueness.
        class CreateConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#list_conversations Conversations.ListConversations}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project from which to list all conversation.
        #     Format: `projects/<Project ID>/locations/<Location ID>`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter expression that filters conversations listed in the response. In
        #     general, the expression must specify the field name, a comparison operator,
        #     and the value to use for filtering:
        #     <ul>
        #       <li>The value must be a string, a number, or a boolean.</li>
        #       <li>The comparison operator must be either `=`,`!=`, `>`, or `<`.</li>
        #       <li>To filter on multiple expressions, separate the
        #           expressions with `AND` or `OR` (omitting both implies `AND`).</li>
        #       <li>For clarity, expressions can be enclosed in parentheses.</li>
        #     </ul>
        #     Only `lifecycle_state` can be filtered on in this way. For example,
        #     the following expression only returns `COMPLETED` conversations:
        #
        #     `lifecycle_state = "COMPLETED"`
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        class ListConversationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#list_conversations Conversations.ListConversations}.
        # @!attribute [rw] conversations
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::Conversation>]
        #     The list of conversations. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListConversationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#get_conversation Conversations.GetConversation}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the conversation. Format:
        #     `projects/<Project ID>/locations/<Location ID>/conversations/<Conversation
        #     ID>`.
        class GetConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#complete_conversation Conversations.CompleteConversation}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource identifier of the conversation to close.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`.
        class CompleteConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#list_messages Conversations.ListMessages}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the conversation to list messages for.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter on message fields. Currently predicates on `create_time`
        #     and `create_time_epoch_microseconds` are supported. `create_time` only
        #     support milliseconds accuracy. E.g.,
        #     `create_time_epoch_microseconds > 1551790877964485` or
        #     `create_time > 2017-01-15T01:30:15.01Z`.
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListMessagesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#list_messages Conversations.ListMessages}.
        # @!attribute [rw] messages
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::Message>]
        #     The list of messages. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        #     `messages` is sorted by `create_time` in descending order.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are
        #     no more results in the list.
        class ListMessagesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a phone number for telephony integration. It allows for connecting
        # a particular conversation over telephony.
        # @!attribute [r] phone_number
        #   @return [::String]
        #     Output only. The phone number to connect to this conversation.
        class ConversationPhoneNumber
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#suggest_conversation_summary Conversations.SuggestConversationSummary}.
        # @!attribute [rw] conversation
        #   @return [::String]
        #     Required. The conversation to fetch suggestion for.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>`.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used as context for
        #     compiling suggestion. If empty, the latest message of the conversation will
        #     be used.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Max number of messages prior to and including
        #     [latest_message] to use as context when compiling the
        #     suggestion. By default 500 and at most 1000.
        # @!attribute [rw] assist_query_params
        #   @return [::Google::Cloud::Dialogflow::V2::AssistQueryParameters]
        #     Parameters for a human assist query. Only used for POC/demo purpose.
        class SuggestConversationSummaryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#suggest_conversation_summary Conversations.SuggestConversationSummary}.
        # @!attribute [rw] summary
        #   @return [::Google::Cloud::Dialogflow::V2::SuggestConversationSummaryResponse::Summary]
        #     Generated summary.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used as context for
        #     compiling suggestion.
        #
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/conversations/<Conversation ID>/messages/<Message ID>`.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Number of messages prior to and including
        #     [last_conversation_message][] used to compile the suggestion. It may be
        #     smaller than the [SuggestSummaryRequest.context_size][] field in the
        #     request if there weren't that many messages in the conversation.
        class SuggestConversationSummaryResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Generated summary for a conversation.
          # @!attribute [rw] text
          #   @return [::String]
          #     The summary content that is concatenated into one string.
          # @!attribute [rw] text_sections
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     The summary content that is divided into sections. The key is the
          #     section's name and the value is the section's content. There is no
          #     specific format for the key or value.
          # @!attribute [rw] answer_record
          #   @return [::String]
          #     The name of the answer record. Format:
          #     "projects/<Project ID>/answerRecords/<Answer Record ID>"
          # @!attribute [rw] baseline_model_version
          #   @return [::String]
          #     The baseline model version used to generate this summary. It is empty if
          #     a baseline model was not used to generate this summary.
          class Summary
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class TextSectionsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#generate_stateless_summary Conversations.GenerateStatelessSummary}.
        # @!attribute [rw] stateless_conversation
        #   @return [::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryRequest::MinimalConversation]
        #     Required. The conversation to suggest a summary for.
        # @!attribute [rw] conversation_profile
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationProfile]
        #     Required. A ConversationProfile containing information required for Summary
        #     generation.
        #     Required fields: \\{language_code, security_settings}
        #     Optional fields: \\{agent_assistant_config}
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used as context for
        #     generating a Summary. If empty, the latest message of the conversation will
        #     be used. The format is specific to the user and the names of the messages
        #     provided.
        # @!attribute [rw] max_context_size
        #   @return [::Integer]
        #     Max number of messages prior to and including
        #     [latest_message] to use as context when compiling the
        #     suggestion. By default 500 and at most 1000.
        class GenerateStatelessSummaryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The minimum amount of information required to generate a Summary without
          # having a Conversation resource created.
          # @!attribute [rw] messages
          #   @return [::Array<::Google::Cloud::Dialogflow::V2::Message>]
          #     Required. The messages that the Summary will be generated from. It is
          #     expected that this message content is already redacted and does not
          #     contain any PII. Required fields: {content, language_code, participant,
          #     participant_role} Optional fields: \\{send_time} If send_time is not
          #     provided, then the messages must be provided in chronological order.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource to charge for the Summary's generation.
          #     Format: `projects/<Project ID>/locations/<Location ID>`.
          class MinimalConversation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Conversations::Client#generate_stateless_summary Conversations.GenerateStatelessSummary}.
        # @!attribute [rw] summary
        #   @return [::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryResponse::Summary]
        #     Generated summary.
        # @!attribute [rw] latest_message
        #   @return [::String]
        #     The name of the latest conversation message used as context for
        #     compiling suggestion. The format is specific to the user and the names of
        #     the messages provided.
        # @!attribute [rw] context_size
        #   @return [::Integer]
        #     Number of messages prior to and including
        #     [last_conversation_message][] used to compile the suggestion. It may be
        #     smaller than the [GenerateStatelessSummaryRequest.context_size][] field in
        #     the request if there weren't that many messages in the conversation.
        class GenerateStatelessSummaryResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Generated summary for a conversation.
          # @!attribute [rw] text
          #   @return [::String]
          #     The summary content that is concatenated into one string.
          # @!attribute [rw] text_sections
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     The summary content that is divided into sections. The key is the
          #     section's name and the value is the section's content. There is no
          #     specific format for the key or value.
          # @!attribute [rw] baseline_model_version
          #   @return [::String]
          #     The baseline model version used to generate this summary. It is empty if
          #     a baseline model was not used to generate this summary.
          class Summary
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class TextSectionsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
