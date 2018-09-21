# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.UserSignatures do
  @moduledoc """
  API calls for all endpoints tagged `UserSignatures`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Removes removes signature information for the specified user.
  Removes the signature information for the user.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_delete_user_signature(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def user_signatures_delete_user_signature(
        connection,
        account_id,
        signature_id,
        user_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes the user initials image or the  user signature image for the specified user.
  Deletes the specified initials image or signature image for the specified user.  The function deletes one or the other of the image types, to delete both the initials image and signature image you must call the endpoint twice.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - image_type (String.t): One of **signature_image** or **initials_image**.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserSignatures{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_delete_user_signature_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.UserSignatures.t()} | {:error, Tesla.Env.t()}
  def user_signatures_delete_user_signature_image(
        connection,
        account_id,
        image_type,
        signature_id,
        user_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}/#{image_type}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignatures{})
  end

  @doc """
  Gets the user signature information for the specified user.
  Retrieves the structure of a single signature with a known signature name.  The userId specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserSignatures{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_get_user_signature(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.UserSignatures.t()} | {:error, Tesla.Env.t()}
  def user_signatures_get_user_signature(
        connection,
        account_id,
        signature_id,
        user_id,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignatures{})
  end

  @doc """
  Retrieves the user initials image or the  user signature image for the specified user.
  Retrieves the specified initials image or signature image for the specified user. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId property specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.  ###### Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - image_type (String.t): One of **signature_image** or **initials_image**.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :include_chrome (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_get_user_signature_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def user_signatures_get_user_signature_image(
        connection,
        account_id,
        image_type,
        signature_id,
        user_id,
        opts \\ []
      ) do
    optional_params = %{
      :include_chrome => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}/#{image_type}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves a list of user signature definitions for a specified user.
  Retrieves the signature definitions for the specified user.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :stamp_type (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.UserSignaturesInformation{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_get_user_signatures(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserSignaturesInformation.t()} | {:error, Tesla.Env.t()}
  def user_signatures_get_user_signatures(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :stamp_type => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignaturesInformation{})
  end

  @doc """
  Adds user Signature and initials images to a Signature.
  Adds a user signature image and/or user initials image to the specified user.   The userId property specified in the endpoint must match the authenticated user&#39;s userId and the user must be a member of the account.  The rules and processes associated with this are:  * If Content-Type is set to application/json, then the default behavior for creating a default signature image, based on the name and a DocuSign font, is used. * If Content-Type is set to multipart/form-data, then the request must contain a first part with the user signature information, followed by parts that contain the images.  For each Image part, the Content-Disposition header has a \&quot;filename\&quot; value that is used to map to the &#x60;signatureName&#x60; and/or &#x60;signatureInitials&#x60; properties in the JSON to the image.   For example:  &#x60;Content-Disposition: file; filename&#x3D;\&quot;Ron Test20121127083900\&quot;&#x60;  If no matching image (by filename value) is found, then the image is not set. One, both, or neither of the signature and initials images can be set with this call.  The Content-Transfer-Encoding: base64 header, set in the header for the part containing the image, can be set to indicate that the images are formatted as base64 instead of as binary.  If successful, 200-OK is returned, and a JSON structure containing the signature information is provided, note that the signatureId can change with each API POST, PUT, or DELETE since the changes to the signature structure cause the current signature to be closed, and a new signature record to be created.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :user_signatures_information (UserSignaturesInformation): 

  ## Returns

  {:ok, %DocuSign.Model.UserSignaturesInformation{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_post_user_signatures(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.UserSignaturesInformation.t()} | {:error, Tesla.Env.t()}
  def user_signatures_post_user_signatures(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :userSignaturesInformation => :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignaturesInformation{})
  end

  @doc """
  Adds/updates a user signature.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :user_signatures_information (UserSignaturesInformation): 

  ## Returns

  {:ok, %DocuSign.Model.UserSignaturesInformation{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_put_user_signature(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserSignaturesInformation.t()} | {:error, Tesla.Env.t()}
  def user_signatures_put_user_signature(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :userSignaturesInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignaturesInformation{})
  end

  @doc """
  Updates the user signature for a specified user.
  Creates, or updates, the signature font and initials for the specified user. When creating a signature, you use this resource to create the signature name and then add the signature and initials images into the signature.  ###### Note: This will also create a default signature for the user when one does not exist.  The userId property specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :close_existing_signature (String.t): When set to **true**, closes the current signature.
    - :user_signature_definition (UserSignatureDefinition): 

  ## Returns

  {:ok, %DocuSign.Model.UserSignatures{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_put_user_signature_by_id(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.UserSignatures.t()} | {:error, Tesla.Env.t()}
  def user_signatures_put_user_signature_by_id(
        connection,
        account_id,
        signature_id,
        user_id,
        opts \\ []
      ) do
    optional_params = %{
      :close_existing_signature => :query,
      :userSignatureDefinition => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignatures{})
  end

  @doc """
  Updates the user signature image or user initials image for the specified user.
  Updates the user signature image or user initials image for the specified user. The supported image formats for this file are: gif, png, jpeg, and bmp. The file must be less than 200K.  The userId property specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the account.  The &#x60;signatureId&#x60; parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (&#x60;signatureId&#x60;), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \&quot;Bob Smith\&quot; as \&quot;Bob%20Smith\&quot;. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - image_type (String.t): One of **signature_image** or **initials_image**.
  - signature_id (String.t): The ID of the signature being accessed.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserSignatures{}} on success
  {:error, info} on failure
  """
  @spec user_signatures_put_user_signature_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.UserSignatures.t()} | {:error, Tesla.Env.t()}
  def user_signatures_put_user_signature_image(
        connection,
        account_id,
        image_type,
        signature_id,
        user_id,
        _opts \\ []
      ) do
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/signatures/#{signature_id}/#{image_type}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSignatures{})
  end
end
