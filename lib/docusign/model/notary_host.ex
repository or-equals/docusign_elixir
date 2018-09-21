# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.NotaryHost do
  @moduledoc """
  This object is used only when &#x60;inPersonSigningType&#x60; in the &#x60;inPersonSigner&#x60; object is &#x60;notary&#x60;.  It describes information about the notary host. The following information is required when using the eNotary in-person signing flow:  * &#x60;name&#x60;: Specifies the notary&#39;s full legal name. * &#x60;email&#x60;: Specifies the notary&#39;s email address. * &#x60;recipientId&#x60;: A unique ID number for the notary signing host. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessCode,
    :addAccessCodeToEmail,
    :clientUserId,
    :customFields,
    :declinedDateTime,
    :declinedReason,
    :deliveredDateTime,
    :deliveryMethod,
    :documentVisibility,
    :email,
    :emailNotification,
    :embeddedRecipientStartURL,
    :errorDetails,
    :faxNumber,
    :hostRecipientId,
    :idCheckConfigurationName,
    :idCheckInformationInput,
    :inheritEmailNotificationConfiguration,
    :name,
    :note,
    :phoneAuthentication,
    :recipientAttachments,
    :recipientAuthenticationStatus,
    :recipientId,
    :recipientIdGuid,
    :requireIdLookup,
    :roleName,
    :routingOrder,
    :samlAuthentication,
    :sentDateTime,
    :signedDateTime,
    :smsAuthentication,
    :socialAuthentications,
    :status,
    :tabs,
    :templateLocked,
    :templateRequired,
    :totalTabCount,
    :userId
  ]

  @type t :: %__MODULE__{
          :accessCode => String.t(),
          :addAccessCodeToEmail => String.t(),
          :clientUserId => String.t(),
          :customFields => [String.t()],
          :declinedDateTime => String.t(),
          :declinedReason => String.t(),
          :deliveredDateTime => String.t(),
          :deliveryMethod => String.t(),
          :documentVisibility => [DocumentVisibility],
          :email => String.t(),
          :emailNotification => RecipientEmailNotification,
          :embeddedRecipientStartURL => String.t(),
          :errorDetails => ErrorDetails,
          :faxNumber => String.t(),
          :hostRecipientId => String.t(),
          :idCheckConfigurationName => String.t(),
          :idCheckInformationInput => IdCheckInformationInput,
          :inheritEmailNotificationConfiguration => String.t(),
          :name => String.t(),
          :note => String.t(),
          :phoneAuthentication => RecipientPhoneAuthentication,
          :recipientAttachments => [RecipientAttachment],
          :recipientAuthenticationStatus => AuthenticationStatus,
          :recipientId => String.t(),
          :recipientIdGuid => String.t(),
          :requireIdLookup => String.t(),
          :roleName => String.t(),
          :routingOrder => String.t(),
          :samlAuthentication => RecipientSamlAuthentication,
          :sentDateTime => String.t(),
          :signedDateTime => String.t(),
          :smsAuthentication => RecipientSmsAuthentication,
          :socialAuthentications => [SocialAuthentication],
          :status => String.t(),
          :tabs => EnvelopeRecipientTabs,
          :templateLocked => String.t(),
          :templateRequired => String.t(),
          :totalTabCount => String.t(),
          :userId => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.NotaryHost do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:documentVisibility, :list, DocuSign.Model.DocumentVisibility, options)
    |> deserialize(
      :emailNotification,
      :struct,
      DocuSign.Model.RecipientEmailNotification,
      options
    )
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(
      :idCheckInformationInput,
      :struct,
      DocuSign.Model.IdCheckInformationInput,
      options
    )
    |> deserialize(
      :phoneAuthentication,
      :struct,
      DocuSign.Model.RecipientPhoneAuthentication,
      options
    )
    |> deserialize(:recipientAttachments, :list, DocuSign.Model.RecipientAttachment, options)
    |> deserialize(
      :recipientAuthenticationStatus,
      :struct,
      DocuSign.Model.AuthenticationStatus,
      options
    )
    |> deserialize(
      :samlAuthentication,
      :struct,
      DocuSign.Model.RecipientSamlAuthentication,
      options
    )
    |> deserialize(
      :smsAuthentication,
      :struct,
      DocuSign.Model.RecipientSmsAuthentication,
      options
    )
    |> deserialize(:socialAuthentications, :list, DocuSign.Model.SocialAuthentication, options)
    |> deserialize(:tabs, :struct, DocuSign.Model.EnvelopeRecipientTabs, options)
  end
end
