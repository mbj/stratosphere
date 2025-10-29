module Stratosphere.ApiGateway.RequestValidator (
        RequestValidator(..), mkRequestValidator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestValidator
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html>
    RequestValidator {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-restapiid>
                      restApiId :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestbody>
                      validateRequestBody :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestparameters>
                      validateRequestParameters :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestValidator :: Value Prelude.Text -> RequestValidator
mkRequestValidator restApiId
  = RequestValidator
      {restApiId = restApiId, name = Prelude.Nothing,
       validateRequestBody = Prelude.Nothing,
       validateRequestParameters = Prelude.Nothing}
instance ToResourceProperties RequestValidator where
  toResourceProperties RequestValidator {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::RequestValidator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ValidateRequestBody" Prelude.<$> validateRequestBody,
                               (JSON..=) "ValidateRequestParameters"
                                 Prelude.<$> validateRequestParameters]))}
instance JSON.ToJSON RequestValidator where
  toJSON RequestValidator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ValidateRequestBody" Prelude.<$> validateRequestBody,
                  (JSON..=) "ValidateRequestParameters"
                    Prelude.<$> validateRequestParameters])))
instance Property "Name" RequestValidator where
  type PropertyType "Name" RequestValidator = Value Prelude.Text
  set newValue RequestValidator {..}
    = RequestValidator {name = Prelude.pure newValue, ..}
instance Property "RestApiId" RequestValidator where
  type PropertyType "RestApiId" RequestValidator = Value Prelude.Text
  set newValue RequestValidator {..}
    = RequestValidator {restApiId = newValue, ..}
instance Property "ValidateRequestBody" RequestValidator where
  type PropertyType "ValidateRequestBody" RequestValidator = Value Prelude.Bool
  set newValue RequestValidator {..}
    = RequestValidator
        {validateRequestBody = Prelude.pure newValue, ..}
instance Property "ValidateRequestParameters" RequestValidator where
  type PropertyType "ValidateRequestParameters" RequestValidator = Value Prelude.Bool
  set newValue RequestValidator {..}
    = RequestValidator
        {validateRequestParameters = Prelude.pure newValue, ..}