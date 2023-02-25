module Stratosphere.ApiGateway.Method.IntegrationResponseProperty (
        IntegrationResponseProperty(..), mkIntegrationResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationResponseProperty
  = IntegrationResponseProperty {contentHandling :: (Prelude.Maybe (Value Prelude.Text)),
                                 responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 responseTemplates :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 selectionPattern :: (Prelude.Maybe (Value Prelude.Text)),
                                 statusCode :: (Value Prelude.Text)}
mkIntegrationResponseProperty ::
  Value Prelude.Text -> IntegrationResponseProperty
mkIntegrationResponseProperty statusCode
  = IntegrationResponseProperty
      {statusCode = statusCode, contentHandling = Prelude.Nothing,
       responseParameters = Prelude.Nothing,
       responseTemplates = Prelude.Nothing,
       selectionPattern = Prelude.Nothing}
instance ToResourceProperties IntegrationResponseProperty where
  toResourceProperties IntegrationResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method.IntegrationResponse",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatusCode" JSON..= statusCode]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentHandling" Prelude.<$> contentHandling,
                               (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                               (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                               (JSON..=) "SelectionPattern" Prelude.<$> selectionPattern]))}
instance JSON.ToJSON IntegrationResponseProperty where
  toJSON IntegrationResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatusCode" JSON..= statusCode]
              (Prelude.catMaybes
                 [(JSON..=) "ContentHandling" Prelude.<$> contentHandling,
                  (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                  (JSON..=) "ResponseTemplates" Prelude.<$> responseTemplates,
                  (JSON..=) "SelectionPattern" Prelude.<$> selectionPattern])))
instance Property "ContentHandling" IntegrationResponseProperty where
  type PropertyType "ContentHandling" IntegrationResponseProperty = Value Prelude.Text
  set newValue IntegrationResponseProperty {..}
    = IntegrationResponseProperty
        {contentHandling = Prelude.pure newValue, ..}
instance Property "ResponseParameters" IntegrationResponseProperty where
  type PropertyType "ResponseParameters" IntegrationResponseProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IntegrationResponseProperty {..}
    = IntegrationResponseProperty
        {responseParameters = Prelude.pure newValue, ..}
instance Property "ResponseTemplates" IntegrationResponseProperty where
  type PropertyType "ResponseTemplates" IntegrationResponseProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IntegrationResponseProperty {..}
    = IntegrationResponseProperty
        {responseTemplates = Prelude.pure newValue, ..}
instance Property "SelectionPattern" IntegrationResponseProperty where
  type PropertyType "SelectionPattern" IntegrationResponseProperty = Value Prelude.Text
  set newValue IntegrationResponseProperty {..}
    = IntegrationResponseProperty
        {selectionPattern = Prelude.pure newValue, ..}
instance Property "StatusCode" IntegrationResponseProperty where
  type PropertyType "StatusCode" IntegrationResponseProperty = Value Prelude.Text
  set newValue IntegrationResponseProperty {..}
    = IntegrationResponseProperty {statusCode = newValue, ..}