module Stratosphere.ApiGatewayV2.Api (
        module Exports, Api(..), mkApi
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Api.BodyS3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Api.CorsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Api
  = Api {apiKeySelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
         basePath :: (Prelude.Maybe (Value Prelude.Text)),
         body :: (Prelude.Maybe JSON.Object),
         bodyS3Location :: (Prelude.Maybe BodyS3LocationProperty),
         corsConfiguration :: (Prelude.Maybe CorsProperty),
         credentialsArn :: (Prelude.Maybe (Value Prelude.Text)),
         description :: (Prelude.Maybe (Value Prelude.Text)),
         disableExecuteApiEndpoint :: (Prelude.Maybe (Value Prelude.Bool)),
         disableSchemaValidation :: (Prelude.Maybe (Value Prelude.Bool)),
         failOnWarnings :: (Prelude.Maybe (Value Prelude.Bool)),
         name :: (Prelude.Maybe (Value Prelude.Text)),
         protocolType :: (Prelude.Maybe (Value Prelude.Text)),
         routeKey :: (Prelude.Maybe (Value Prelude.Text)),
         routeSelectionExpression :: (Prelude.Maybe (Value Prelude.Text)),
         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
         target :: (Prelude.Maybe (Value Prelude.Text)),
         version :: (Prelude.Maybe (Value Prelude.Text))}
mkApi :: Api
mkApi
  = Api
      {apiKeySelectionExpression = Prelude.Nothing,
       basePath = Prelude.Nothing, body = Prelude.Nothing,
       bodyS3Location = Prelude.Nothing,
       corsConfiguration = Prelude.Nothing,
       credentialsArn = Prelude.Nothing, description = Prelude.Nothing,
       disableExecuteApiEndpoint = Prelude.Nothing,
       disableSchemaValidation = Prelude.Nothing,
       failOnWarnings = Prelude.Nothing, name = Prelude.Nothing,
       protocolType = Prelude.Nothing, routeKey = Prelude.Nothing,
       routeSelectionExpression = Prelude.Nothing, tags = Prelude.Nothing,
       target = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties Api where
  toResourceProperties Api {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Api",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiKeySelectionExpression"
                              Prelude.<$> apiKeySelectionExpression,
                            (JSON..=) "BasePath" Prelude.<$> basePath,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "BodyS3Location" Prelude.<$> bodyS3Location,
                            (JSON..=) "CorsConfiguration" Prelude.<$> corsConfiguration,
                            (JSON..=) "CredentialsArn" Prelude.<$> credentialsArn,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisableExecuteApiEndpoint"
                              Prelude.<$> disableExecuteApiEndpoint,
                            (JSON..=) "DisableSchemaValidation"
                              Prelude.<$> disableSchemaValidation,
                            (JSON..=) "FailOnWarnings" Prelude.<$> failOnWarnings,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ProtocolType" Prelude.<$> protocolType,
                            (JSON..=) "RouteKey" Prelude.<$> routeKey,
                            (JSON..=) "RouteSelectionExpression"
                              Prelude.<$> routeSelectionExpression,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Target" Prelude.<$> target,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON Api where
  toJSON Api {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiKeySelectionExpression"
                 Prelude.<$> apiKeySelectionExpression,
               (JSON..=) "BasePath" Prelude.<$> basePath,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "BodyS3Location" Prelude.<$> bodyS3Location,
               (JSON..=) "CorsConfiguration" Prelude.<$> corsConfiguration,
               (JSON..=) "CredentialsArn" Prelude.<$> credentialsArn,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisableExecuteApiEndpoint"
                 Prelude.<$> disableExecuteApiEndpoint,
               (JSON..=) "DisableSchemaValidation"
                 Prelude.<$> disableSchemaValidation,
               (JSON..=) "FailOnWarnings" Prelude.<$> failOnWarnings,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ProtocolType" Prelude.<$> protocolType,
               (JSON..=) "RouteKey" Prelude.<$> routeKey,
               (JSON..=) "RouteSelectionExpression"
                 Prelude.<$> routeSelectionExpression,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Target" Prelude.<$> target,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "ApiKeySelectionExpression" Api where
  type PropertyType "ApiKeySelectionExpression" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {apiKeySelectionExpression = Prelude.pure newValue, ..}
instance Property "BasePath" Api where
  type PropertyType "BasePath" Api = Value Prelude.Text
  set newValue Api {..} = Api {basePath = Prelude.pure newValue, ..}
instance Property "Body" Api where
  type PropertyType "Body" Api = JSON.Object
  set newValue Api {..} = Api {body = Prelude.pure newValue, ..}
instance Property "BodyS3Location" Api where
  type PropertyType "BodyS3Location" Api = BodyS3LocationProperty
  set newValue Api {..}
    = Api {bodyS3Location = Prelude.pure newValue, ..}
instance Property "CorsConfiguration" Api where
  type PropertyType "CorsConfiguration" Api = CorsProperty
  set newValue Api {..}
    = Api {corsConfiguration = Prelude.pure newValue, ..}
instance Property "CredentialsArn" Api where
  type PropertyType "CredentialsArn" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {credentialsArn = Prelude.pure newValue, ..}
instance Property "Description" Api where
  type PropertyType "Description" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {description = Prelude.pure newValue, ..}
instance Property "DisableExecuteApiEndpoint" Api where
  type PropertyType "DisableExecuteApiEndpoint" Api = Value Prelude.Bool
  set newValue Api {..}
    = Api {disableExecuteApiEndpoint = Prelude.pure newValue, ..}
instance Property "DisableSchemaValidation" Api where
  type PropertyType "DisableSchemaValidation" Api = Value Prelude.Bool
  set newValue Api {..}
    = Api {disableSchemaValidation = Prelude.pure newValue, ..}
instance Property "FailOnWarnings" Api where
  type PropertyType "FailOnWarnings" Api = Value Prelude.Bool
  set newValue Api {..}
    = Api {failOnWarnings = Prelude.pure newValue, ..}
instance Property "Name" Api where
  type PropertyType "Name" Api = Value Prelude.Text
  set newValue Api {..} = Api {name = Prelude.pure newValue, ..}
instance Property "ProtocolType" Api where
  type PropertyType "ProtocolType" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {protocolType = Prelude.pure newValue, ..}
instance Property "RouteKey" Api where
  type PropertyType "RouteKey" Api = Value Prelude.Text
  set newValue Api {..} = Api {routeKey = Prelude.pure newValue, ..}
instance Property "RouteSelectionExpression" Api where
  type PropertyType "RouteSelectionExpression" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {routeSelectionExpression = Prelude.pure newValue, ..}
instance Property "Tags" Api where
  type PropertyType "Tags" Api = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Api {..} = Api {tags = Prelude.pure newValue, ..}
instance Property "Target" Api where
  type PropertyType "Target" Api = Value Prelude.Text
  set newValue Api {..} = Api {target = Prelude.pure newValue, ..}
instance Property "Version" Api where
  type PropertyType "Version" Api = Value Prelude.Text
  set newValue Api {..} = Api {version = Prelude.pure newValue, ..}