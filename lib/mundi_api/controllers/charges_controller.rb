# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # ChargesController
  class ChargesController < BaseController
    @instance = ChargesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a charge from its id
    # @param [String] charge_id Required parameter: Charge id
    # @return GetChargeResponse response from the API call
    def get_charge(charge_id)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Retries a charge
    # @param [String] charge_id Required parameter: Charge id
    # @return GetChargeResponse response from the API call
    def retry_charge(charge_id)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}/retry'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Creates a new charge
    # @param [CreateChargeRequest] request Required parameter: Request for
    # creating a charge
    # @return GetChargeResponse response from the API call
    def create_charge(request)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/Charges'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Updates the card from a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [UpdateChargeCardRequest] request Required parameter: Request for
    # updating a charge's card
    # @return GetChargeResponse response from the API call
    def update_charge_card(charge_id,
                           request)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}/card'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Updates a charge's payment method
    # @param [String] charge_id Required parameter: Charge id
    # @param [UpdateChargePaymentMethodRequest] request Required parameter:
    # Request for updating the payment method from a charge
    # @return GetChargeResponse response from the API call
    def update_charge_payment_method(charge_id,
                                     request)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}/payment-method'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Cancel a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [CreateCancelChargeRequest] request Optional parameter: Request for
    # cancelling a charge
    # @return GetChargeResponse response from the API call
    def cancel_charge(charge_id,
                      request = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Captures a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [CreateCaptureChargeRequest] request Optional parameter: Request
    # for capturing a charge
    # @return GetChargeResponse response from the API call
    def capture_charge(charge_id,
                       request = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges/{charge_id}/capture'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Updates the metadata from a charge
    # @param [String] charge_id Required parameter: The charge id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the charge metadata
    # @return GetChargeResponse response from the API call
    def update_charge_metadata(charge_id,
                               request)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/Charges/{charge_id}/metadata'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end

    # Lists all charges
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for charge's code
    # @param [String] status Optional parameter: Filter for charge's status
    # @param [String] payment_method Optional parameter: Filter for charge's
    # payment method
    # @param [String] customer_id Optional parameter: Filter for charge's
    # customer id
    # @param [String] order_id Optional parameter: Filter for charge's order
    # id
    # @param [DateTime] created_since Optional parameter: Filter for the
    # beginning of the range for charge's creation
    # @param [DateTime] created_until Optional parameter: Filter for the end of
    # the range for charge's creation
    # @return ListChargesResponse response from the API call
    def get_charges(page = nil,
                    size = nil,
                    code = nil,
                    status = nil,
                    payment_method = nil,
                    customer_id = nil,
                    order_id = nil,
                    created_since = nil,
                    created_until = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/charges'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'code' => code,
          'status' => status,
          'payment_method' => payment_method,
          'customer_id' => customer_id,
          'order_id' => order_id,
          'created_since' => created_since,
          'created_until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListChargesResponse.from_hash(decoded)
    end

    # Updates the due date from a charge
    # @param [String] charge_id Required parameter: Charge Id
    # @param [UpdateChargeDueDateRequest] request Required parameter: Request
    # for updating the due date
    # @return GetChargeResponse response from the API call
    def update_charge_due_date(charge_id,
                               request)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/Charges/{charge_id}/due-date'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'charge_id' => charge_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargeResponse.from_hash(decoded)
    end
  end
end
