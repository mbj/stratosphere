module Stratosphere.ApiGatewayV2.Integration (
        module Exports, Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Integration.ResponseParameterMapProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Integration.TlsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Integration
  = Integration {apiId :: (Value Prelude.Text),
                 connectionId :: (Prelude.Maybe (Value Prelude.Text)),
                 connectionType :: (Prelude.Maybe (Value Prelude.Text)),
                 contentHandlingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                 credentialsArn :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 integrationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                 integrationSubtype :: (Prelude.Maybe (Value Prelude.Text)),
                 integrationType :: (Value Prelude.Text),
                 integrationUri :: (Prelude.Maybe (Value Prelude.Text)),
                 passthroughBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                 payloadFormatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 requestParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 requestTemplates :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ResponseParameterMapProperty)),
                 templateSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
                 timeoutInMillis :: (Prelude.Maybe (Value Prelude.Integer)),
                 tlsConfig :: (Prelude.Maybe TlsConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegration ::
  Value Prelude.Text -> Value Prelude.Text -> Integration
mkIntegration apiId integrationType
  = Integration
      {apiId = apiId, integrationType = integrationType,
       connectionId = Prelude.Nothing, connectionType = Prelude.Nothing,
       contentHandlingStrategy = Prelude.Nothing,
       credentialsArn = Prelude.Nothing, description = Prelude.Nothing,
       integrationMethod = Prelude.Nothing,
       integrationSubtype = Prelude.Nothing,
       integrationUri = Prelude.Nothing,
       passthroughBehavior = Prelude.Nothing,
       payloadFormatVersion = Prelude.Nothing,
       requestParameters = Prelude.Nothing,
       requestTemplates = Prelude.Nothing,
       responseParameters = Prelude.Nothing,
       templateSelectionExpression = Prelude.Nothing,
       timeoutInMillis = Prelude.Nothing, tlsConfig = Prelude.Nothing}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "IntegrationType" JSON..= integrationType]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionId" Prelude.<$> connectionId,
                               (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                               (JSON..=) "ContentHandlingStrategy"
                                 Prelude.<$> contentHandlingStrategy,
                               (JSON..=) "CredentialsArn" Prelude.<$> credentialsArn,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IntegrationMethod" Prelude.<$> integrationMethod,
                               (JSON..=) "IntegrationSubtype" Prelude.<$> integrationSubtype,
                               (JSON..=) "IntegrationUri" Prelude.<$> integrationUri,
                               (JSON..=) "PassthroughBehavior" Prelude.<$> passthroughBehavior,
                               (JSON..=) "PayloadFormatVersion" Prelude.<$> payloadFormatVersion,
                               (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                               (JSON..=) "RequestTemplates" Prelude.<$> requestTemplates,
                               (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                               (JSON..=) "TemplateSelectionExpression"
                                 Prelude.<$> templateSelectionExpression,
                               (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis,
                               (JSON..=) "TlsConfig" Prelude.<$> tlsConfig]))}
instance JSON.ToJSON Integration where
  toJSON Integration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "IntegrationType" JSON..= integrationType]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionId" Prelude.<$> connectionId,
                  (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                  (JSON..=) "ContentHandlingStrategy"
                    Prelude.<$> contentHandlingStrategy,
                  (JSON..=) "CredentialsArn" Prelude.<$> credentialsArn,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IntegrationMethod" Prelude.<$> integrationMethod,
                  (JSON..=) "IntegrationSubtype" Prelude.<$> integrationSubtype,
                  (JSON..=) "IntegrationUri" Prelude.<$> integrationUri,
                  (JSON..=) "PassthroughBehavior" Prelude.<$> passthroughBehavior,
                  (JSON..=) "PayloadFormatVersion" Prelude.<$> payloadFormatVersion,
                  (JSON..=) "RequestParameters" Prelude.<$> requestParameters,
                  (JSON..=) "RequestTemplates" Prelude.<$> requestTemplates,
                  (JSON..=) "ResponseParameters" Prelude.<$> responseParameters,
                  (JSON..=) "TemplateSelectionExpression"
                    Prelude.<$> templateSelectionExpression,
                  (JSON..=) "TimeoutInMillis" Prelude.<$> timeoutInMillis,
                  (JSON..=) "TlsConfig" Prelude.<$> tlsConfig])))
instance Property "ApiId" Integration where
  type PropertyType "ApiId" Integration = Value Prelude.Text
  set newValue Integration {..} = Integration {apiId = newValue, ..}
instance Property "ConnectionId" Integration where
  type PropertyType "ConnectionId" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {connectionId = Prelude.pure newValue, ..}
instance Property "ConnectionType" Integration where
  type PropertyType "ConnectionType" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {connectionType = Prelude.pure newValue, ..}
instance Property "ContentHandlingStrategy" Integration where
  type PropertyType "ContentHandlingStrategy" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {contentHandlingStrategy = Prelude.pure newValue, ..}
instance Property "CredentialsArn" Integration where
  type PropertyType "CredentialsArn" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {credentialsArn = Prelude.pure newValue, ..}
instance Property "Description" Integration where
  type PropertyType "Description" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {description = Prelude.pure newValue, ..}
instance Property "IntegrationMethod" Integration where
  type PropertyType "IntegrationMethod" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationMethod = Prelude.pure newValue, ..}
instance Property "IntegrationSubtype" Integration where
  type PropertyType "IntegrationSubtype" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationSubtype = Prelude.pure newValue, ..}
instance Property "IntegrationType" Integration where
  type PropertyType "IntegrationType" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationType = newValue, ..}
instance Property "IntegrationUri" Integration where
  type PropertyType "IntegrationUri" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationUri = Prelude.pure newValue, ..}
instance Property "PassthroughBehavior" Integration where
  type PropertyType "PassthroughBehavior" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {passthroughBehavior = Prelude.pure newValue, ..}
instance Property "PayloadFormatVersion" Integration where
  type PropertyType "PayloadFormatVersion" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {payloadFormatVersion = Prelude.pure newValue, ..}
instance Property "RequestParameters" Integration where
  type PropertyType "RequestParameters" Integration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Integration {..}
    = Integration {requestParameters = Prelude.pure newValue, ..}
instance Property "RequestTemplates" Integration where
  type PropertyType "RequestTemplates" Integration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Integration {..}
    = Integration {requestTemplates = Prelude.pure newValue, ..}
instance Property "ResponseParameters" Integration where
  type PropertyType "ResponseParameters" Integration = Prelude.Map Prelude.Text ResponseParameterMapProperty
  set newValue Integration {..}
    = Integration {responseParameters = Prelude.pure newValue, ..}
instance Property "TemplateSelectionExpression" Integration where
  type PropertyType "TemplateSelectionExpression" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration
        {templateSelectionExpression = Prelude.pure newValue, ..}
instance Property "TimeoutInMillis" Integration where
  type PropertyType "TimeoutInMillis" Integration = Value Prelude.Integer
  set newValue Integration {..}
    = Integration {timeoutInMillis = Prelude.pure newValue, ..}
instance Property "TlsConfig" Integration where
  type PropertyType "TlsConfig" Integration = TlsConfigProperty
  set newValue Integration {..}
    = Integration {tlsConfig = Prelude.pure newValue, ..}