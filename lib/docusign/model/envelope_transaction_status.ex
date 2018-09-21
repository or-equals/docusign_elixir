# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeTransactionStatus do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :envelopeId,
    :errorDetails,
    :status,
    :transactionId
  ]

  @type t :: %__MODULE__{
          :envelopeId => String.t(),
          :errorDetails => ErrorDetails,
          :status => String.t(),
          :transactionId => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeTransactionStatus do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
  end
end
