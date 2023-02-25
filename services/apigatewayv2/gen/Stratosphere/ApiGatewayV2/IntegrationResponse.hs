module Stratosphere.ApiGatewayV2.IntegrationResponse (
        IntegrationResponse(..), mkIntegrationResponse
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationResponse
  = IntegrationResponse {apiId :: (Value Prelude.Text),
                         contentHandlingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                         integrationId :: (Value Prelude.Text),
                         integrationResponseKey :: (Value Prelude.Text),
                         responseParameters :: (Prelude.Maybe JSON.Object),
                         responseTemplates :: (Prelude.Maybe JSON.Object),
                         templateSelectionExpression :: (Prelude.Maybe (Value Prelude.Text))}
mkIntegrationResponse ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> IntegrationResponse
mkIntegrationResponse apiId integrationId integrationResponseKey
  = IntegrationResponse
      {apiId = apiId, integrationId = integrationId,
       integrationResponseKey = integrationResponseKey,
       contentHandlingStrategy = Prelude.Nothing,
       responseParameters = Prelude.Nothing,
       responseTemplates = Prelude.Nothing,
       templateSelectionExpression = Prelude.Nothing}
instance ToResourceProperties IntegrationResponse where
  toResourceProperties IntegrationResponse {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::IntegrationResponse",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "IntegrationId" JSON..= integrationId,
                            "IntegrationResponseKey" JSON..= integrationResponseKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentHandlingStrategy"
                                 Prelude.<$> contentHandlingStrategy,
                               (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                               (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                               (JSON..=) "TemplateSelectionExpression"
                                 Prelude.<$> templateSelectionExpression]))}
instance JSON.ToJSON IntegrationResponse where
  toJSON IntegrationResponse {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "IntegrationId" JSON..= integrationId,
               "IntegrationResponseKey" JSON..= integrationResponseKey]
              (Prelude.catMaybes
                 [(JSON..=) "ContentHandlingStrategy"
                    Prelude.<$> contentHandlingStrategy,
                  (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                  (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                  (JSON..=) "TemplateSelectionExpression"
                    Prelude.<$> templateSelectionExpression])))
instance Property "ApiId" IntegrationResponse where
  type PropertyType "ApiId" IntegrationResponse = Value Prelude.Text
  set newValue IntegrationResponse {..}
    = IntegrationResponse {apiId = newValue, ..}
instance Property "ContentHandlingStrategy" IntegrationResponse where
  type PropertyType "ContentHandlingStrategy" IntegrationResponse = Value Prelude.Text
  set newValue IntegrationResponse {..}
    = IntegrationResponse
        {contentHandlingStrategy = Prelude.pure newValue, ..}
instance Property "IntegrationId" IntegrationResponse where
  type PropertyType "IntegrationId" IntegrationResponse = Value Prelude.Text
  set newValue IntegrationResponse {..}
    = IntegrationResponse {integrationId = newValue, ..}
instance Property "IntegrationResponseKey" IntegrationResponse where
  type PropertyType "IntegrationResponseKey" IntegrationResponse = Value Prelude.Text
  set newValue IntegrationResponse {..}
    = IntegrationResponse {integrationResponseKey = newValue, ..}
instance Property "ResponseParameters" IntegrationResponse where
  type PropertyType "ResponseParameters" IntegrationResponse = JSON.Object
  set newValue IntegrationResponse {..}
    = IntegrationResponse
        {responseParameters = Prelude.pure newValue, ..}
instance Property "ResponseTemplates" IntegrationResponse where
  type PropertyType "ResponseTemplates" IntegrationResponse = JSON.Object
  set newValue IntegrationResponse {..}
    = IntegrationResponse
        {responseTemplates = Prelude.pure newValue, ..}
instance Property "TemplateSelectionExpression" IntegrationResponse where
  type PropertyType "TemplateSelectionExpression" IntegrationResponse = Value Prelude.Text
  set newValue IntegrationResponse {..}
    = IntegrationResponse
        {templateSelectionExpression = Prelude.pure newValue, ..}