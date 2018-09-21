# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AppStoreProduct do
  @moduledoc """
  Contains information about an APP store product.
  """

  @derive [Poison.Encoder]
  defstruct [
    :marketPlace,
    :productId
  ]

  @type t :: %__MODULE__{
          :marketPlace => String.t(),
          :productId => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AppStoreProduct do
  def decode(value, _options) do
    value
  end
end
