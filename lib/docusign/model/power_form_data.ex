# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PowerFormData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :envelopeId,
    :recipients
  ]

  @type t :: %__MODULE__{
          :envelopeId => String.t(),
          :recipients => [PowerFormFormDataRecipient]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PowerFormData do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:recipients, :list, DocuSign.Model.PowerFormFormDataRecipient, options)
  end
end
