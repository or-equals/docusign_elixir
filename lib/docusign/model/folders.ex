# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Folders do
  @moduledoc """
  Folder management
  """

  @derive [Poison.Encoder]
  defstruct [
    :folders
  ]

  @type t :: %__MODULE__{
          :folders => [Folder]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Folders do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:folders, :list, DocuSign.Model.Folder, options)
  end
end
