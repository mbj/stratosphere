module Stratosphere.ApiGateway.Method.IntegrationResponseProperty (
        IntegrationResponseProperty(..), mkIntegrationResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationResponseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html>
    IntegrationResponseProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html#cfn-apigateway-method-integrationresponse-contenthandling>
                                 contentHandling :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html#cfn-apigateway-method-integrationresponse-responseparameters>
                                 responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html#cfn-apigateway-method-integrationresponse-responsetemplates>
                                 responseTemplates :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html#cfn-apigateway-method-integrationresponse-selectionpattern>
                                 selectionPattern :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-integrationresponse.html#cfn-apigateway-method-integrationresponse-statuscode>
                                 statusCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegrationResponseProperty ::
  Value Prelude.Text -> IntegrationResponseProperty
mkIntegrationResponseProperty statusCode
  = IntegrationResponseProperty
      {haddock_workaround_ = (), statusCode = statusCode,
       contentHandling = Prelude.Nothing,
       responseParameters = Prelude.Nothing,
       responseTemplates = Prelude.Nothing,
       selectionPattern = Prelude.Nothing}
instance ToResourceProperties IntegrationResponseProperty where
  toResourceProperties IntegrationResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method.IntegrationResponse",
         supportsTags = Prelude.False,
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