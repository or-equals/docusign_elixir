# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DocumentHtmlDefinition do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :displayAnchorPrefix,
    :displayAnchors,
    :displayOrder,
    :displayPageNumber,
    :documentGuid,
    :documentId,
    :headerLabel,
    :maxScreenWidth,
    :removeEmptyTags,
    :showMobileOptimizedToggle,
    :source
  ]

  @type t :: %__MODULE__{
          :displayAnchorPrefix => String.t(),
          :displayAnchors => [DocumentHtmlDisplayAnchor],
          :displayOrder => String.t(),
          :displayPageNumber => String.t(),
          :documentGuid => String.t(),
          :documentId => String.t(),
          :headerLabel => String.t(),
          :maxScreenWidth => String.t(),
          :removeEmptyTags => String.t(),
          :showMobileOptimizedToggle => String.t(),
          :source => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocumentHtmlDefinition do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:displayAnchors, :list, DocuSign.Model.DocumentHtmlDisplayAnchor, options)
  end
end
