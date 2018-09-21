# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Templates do
  @moduledoc """
  Template management
  """

  @derive [Poison.Encoder]
  defstruct [
    :allowMarkup,
    :allowReassign,
    :asynchronous,
    :attachmentsUri,
    :authoritativeCopy,
    :authoritativeCopyDefault,
    :autoNavigation,
    :brandId,
    :brandLock,
    :certificateUri,
    :completedDateTime,
    :createdDateTime,
    :customFields,
    :customFieldsUri,
    :declinedDateTime,
    :deletedDateTime,
    :deliveredDateTime,
    :documents,
    :documentsCombinedUri,
    :documentsUri,
    :emailBlurb,
    :emailSettings,
    :emailSubject,
    :enableWetSign,
    :enforceSignerVisibility,
    :envelopeId,
    :envelopeIdStamping,
    :envelopeTemplateDefinition,
    :envelopeUri,
    :initialSentDateTime,
    :is21CFRPart11,
    :isSignatureProviderEnvelope,
    :lastModifiedDateTime,
    :lockInformation,
    :messageLock,
    :notification,
    :notificationUri,
    :purgeState,
    :recipients,
    :recipientsLock,
    :recipientsUri,
    :sentDateTime,
    :signerCanSignOnMobile,
    :signingLocation,
    :status,
    :statusChangedDateTime,
    :templatesUri,
    :transactionId,
    :useDisclosure,
    :voidedDateTime,
    :voidedReason
  ]

  @type t :: %__MODULE__{
          :allowMarkup => String.t(),
          :allowReassign => String.t(),
          :asynchronous => String.t(),
          :attachmentsUri => String.t(),
          :authoritativeCopy => String.t(),
          :authoritativeCopyDefault => String.t(),
          :autoNavigation => String.t(),
          :brandId => String.t(),
          :brandLock => String.t(),
          :certificateUri => String.t(),
          :completedDateTime => String.t(),
          :createdDateTime => String.t(),
          :customFields => AccountCustomFields,
          :customFieldsUri => String.t(),
          :declinedDateTime => String.t(),
          :deletedDateTime => String.t(),
          :deliveredDateTime => String.t(),
          :documents => [Document],
          :documentsCombinedUri => String.t(),
          :documentsUri => String.t(),
          :emailBlurb => String.t(),
          :emailSettings => EnvelopeEmailSettings,
          :emailSubject => String.t(),
          :enableWetSign => String.t(),
          :enforceSignerVisibility => String.t(),
          :envelopeId => String.t(),
          :envelopeIdStamping => String.t(),
          :envelopeTemplateDefinition => EnvelopeTemplateDefinition,
          :envelopeUri => String.t(),
          :initialSentDateTime => String.t(),
          :is21CFRPart11 => String.t(),
          :isSignatureProviderEnvelope => String.t(),
          :lastModifiedDateTime => String.t(),
          :lockInformation => EnvelopeLocks,
          :messageLock => String.t(),
          :notification => Notification,
          :notificationUri => String.t(),
          :purgeState => String.t(),
          :recipients => EnvelopeRecipients,
          :recipientsLock => String.t(),
          :recipientsUri => String.t(),
          :sentDateTime => String.t(),
          :signerCanSignOnMobile => String.t(),
          :signingLocation => String.t(),
          :status => String.t(),
          :statusChangedDateTime => String.t(),
          :templatesUri => String.t(),
          :transactionId => String.t(),
          :useDisclosure => String.t(),
          :voidedDateTime => String.t(),
          :voidedReason => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Templates do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:customFields, :struct, DocuSign.Model.AccountCustomFields, options)
    |> deserialize(:documents, :list, DocuSign.Model.Document, options)
    |> deserialize(:emailSettings, :struct, DocuSign.Model.EnvelopeEmailSettings, options)
    |> deserialize(
      :envelopeTemplateDefinition,
      :struct,
      DocuSign.Model.EnvelopeTemplateDefinition,
      options
    )
    |> deserialize(:lockInformation, :struct, DocuSign.Model.EnvelopeLocks, options)
    |> deserialize(:notification, :struct, DocuSign.Model.Notification, options)
    |> deserialize(:recipients, :struct, DocuSign.Model.EnvelopeRecipients, options)
  end
end
