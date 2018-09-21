# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.BillingPlans do
  @moduledoc """
  API calls for all endpoints tagged `BillingPlans`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Get Account Billing Plan
  Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. This information can be excluded from the response by adding the appropriate optional query string with the &#x60;setting&#x60; set to **false**.   Response  The response returns the billing plan information, including the currency code, for the plan. The &#x60;billingPlan&#x60; and &#x60;succesorPlans&#x60; property values are the same as those shown in the [ML:Get Billing Plan Details] reference. the &#x60;billingAddress&#x60; and &#x60;creditCardInformation&#x60; property values are the same as those shown in the [ML:Update Billing Plan] reference.  ###### Note: When credit card number information is shown, a mask is applied to the response so that only the last 4 digits of the card number are visible. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :include_credit_card_information (String.t): When set to **true**, payment information including credit card information will show in the return.
    - :include_metadata (String.t): When set to **true**, the &#x60;canUpgrade&#x60; and &#x60;renewalStatus&#x60; properities are included the response and an array of &#x60;supportedCountries&#x60; property is added to the &#x60;billingAddress&#x60; information. 
    - :include_successor_plans (String.t): When set to **true**, excludes successor information from the response.

  ## Returns

  {:ok, %DocuSign.Model.BillingPlans{}} on success
  {:error, info} on failure
  """
  @spec billing_plan_get_billing_plan(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.BillingPlans.t()} | {:error, Tesla.Env.t()}
  def billing_plan_get_billing_plan(connection, account_id, opts \\ []) do
    optional_params = %{
      :include_credit_card_information => :query,
      :include_metadata => :query,
      :include_successor_plans => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/billing_plan")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingPlans{})
  end

  @doc """
  Get metadata for a given credit card.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.CreditCardInformation{}} on success
  {:error, info} on failure
  """
  @spec billing_plan_get_credit_card_info(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.CreditCardInformation.t()} | {:error, Tesla.Env.t()}
  def billing_plan_get_credit_card_info(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/billing_plan/credit_card")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.CreditCardInformation{})
  end

  @doc """
  Updates the account billing plan.
  Updates the billing plan information, billing address, and credit card information for the specified account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :preview_billing_plan (String.t): When set to **true**, updates the account using a preview billing plan.
    - :billing_plan_information (BillingPlanInformation): 

  ## Returns

  {:ok, %DocuSign.Model.BillingPlanUpdateResponse{}} on success
  {:error, info} on failure
  """
  @spec billing_plan_put_billing_plan(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.BillingPlanUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def billing_plan_put_billing_plan(connection, account_id, opts \\ []) do
    optional_params = %{
      :preview_billing_plan => :query,
      :billingPlanInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/billing_plan")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingPlanUpdateResponse{})
  end

  @doc """
  Get the billing plan details.
  Retrieves the billing plan details for the specified billing plan ID.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - billing_plan_id (String.t): The ID of the billing plan being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.BillingPlanResponse{}} on success
  {:error, info} on failure
  """
  @spec billing_plans_get_billing_plan(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.BillingPlanResponse.t()} | {:error, Tesla.Env.t()}
  def billing_plans_get_billing_plan(connection, billing_plan_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/billing_plans/#{billing_plan_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingPlanResponse{})
  end

  @doc """
  Gets the list of available billing plans.
  Retrieves a list of the billing plans associated with a distributor.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.BillingPlansResponse{}} on success
  {:error, info} on failure
  """
  @spec billing_plans_get_billing_plans(Tesla.Env.client(), keyword()) ::
          {:ok, DocuSign.Model.BillingPlansResponse.t()} | {:error, Tesla.Env.t()}
  def billing_plans_get_billing_plans(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/billing_plans")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingPlansResponse{})
  end

  @doc """
  Reserverd: Purchase additional envelopes.
  Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :purchased_envelopes_information (PurchasedEnvelopesInformation): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec purchased_envelopes_put_purchased_envelopes(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def purchased_envelopes_put_purchased_envelopes(connection, account_id, opts \\ []) do
    optional_params = %{
      :purchasedEnvelopesInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/billing_plan/purchased_envelopes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
