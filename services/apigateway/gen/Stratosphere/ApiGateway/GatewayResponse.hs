module Stratosphere.ApiGateway.GatewayResponse (
        GatewayResponse(..), mkGatewayResponse
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayResponse
  = GatewayResponse {responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     responseTemplates :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     responseType :: (Value Prelude.Text),
                     restApiId :: (Value Prelude.Text),
                     statusCode :: (Prelude.Maybe (Value Prelude.Text))}
mkGatewayResponse ::
  Value Prelude.Text -> Value Prelude.Text -> GatewayResponse
mkGatewayResponse responseType restApiId
  = GatewayResponse
      {responseType = responseType, restApiId = restApiId,
       responseParameters = Prelude.Nothing,
       responseTemplates = Prelude.Nothing, statusCode = Prelude.Nothing}
instance ToResourceProperties GatewayResponse where
  toResourceProperties GatewayResponse {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::GatewayResponse",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResponseType" JSON..= responseType,
                            "RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                               (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                               (JSON..=) "StatusCode" Prelude.<$> statusCode]))}
instance JSON.ToJSON GatewayResponse where
  toJSON GatewayResponse {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResponseType" JSON..= responseType,
               "RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                  (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                  (JSON..=) "StatusCode" Prelude.<$> statusCode])))
instance Property "ResponseParameters" GatewayResponse where
  type PropertyType "ResponseParameters" GatewayResponse = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GatewayResponse {..}
    = GatewayResponse {responseParameters = Prelude.pure newValue, ..}
instance Property "ResponseTemplates" GatewayResponse where
  type PropertyType "ResponseTemplates" GatewayResponse = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue GatewayResponse {..}
    = GatewayResponse {responseTemplates = Prelude.pure newValue, ..}
instance Property "ResponseType" GatewayResponse where
  type PropertyType "ResponseType" GatewayResponse = Value Prelude.Text
  set newValue GatewayResponse {..}
    = GatewayResponse {responseType = newValue, ..}
instance Property "RestApiId" GatewayResponse where
  type PropertyType "RestApiId" GatewayResponse = Value Prelude.Text
  set newValue GatewayResponse {..}
    = GatewayResponse {restApiId = newValue, ..}
instance Property "StatusCode" GatewayResponse where
  type PropertyType "StatusCode" GatewayResponse = Value Prelude.Text
  set newValue GatewayResponse {..}
    = GatewayResponse {statusCode = Prelude.pure newValue, ..}