# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopePublishTransactionErrorRollup do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :count,
    :errorType
  ]

  @type t :: %__MODULE__{
          :count => String.t(),
          :errorType => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopePublishTransactionErrorRollup do
  def decode(value, _options) do
    value
  end
end
