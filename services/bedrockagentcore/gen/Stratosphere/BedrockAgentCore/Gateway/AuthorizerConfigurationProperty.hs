module Stratosphere.BedrockAgentCore.Gateway.AuthorizerConfigurationProperty (
        module Exports, AuthorizerConfigurationProperty(..),
        mkAuthorizerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Gateway.CustomJWTAuthorizerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AuthorizerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizerconfiguration.html>
    AuthorizerConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizerconfiguration.html#cfn-bedrockagentcore-gateway-authorizerconfiguration-customjwtauthorizer>
                                     customJWTAuthorizer :: CustomJWTAuthorizerConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizerConfigurationProperty ::
  CustomJWTAuthorizerConfigurationProperty
  -> AuthorizerConfigurationProperty
mkAuthorizerConfigurationProperty customJWTAuthorizer
  = AuthorizerConfigurationProperty
      {haddock_workaround_ = (),
       customJWTAuthorizer = customJWTAuthorizer}
instance ToResourceProperties AuthorizerConfigurationProperty where
  toResourceProperties AuthorizerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Gateway.AuthorizerConfiguration",
         supportsTags = Prelude.False,
         properties = ["CustomJWTAuthorizer" JSON..= customJWTAuthorizer]}
instance JSON.ToJSON AuthorizerConfigurationProperty where
  toJSON AuthorizerConfigurationProperty {..}
    = JSON.object ["CustomJWTAuthorizer" JSON..= customJWTAuthorizer]
instance Property "CustomJWTAuthorizer" AuthorizerConfigurationProperty where
  type PropertyType "CustomJWTAuthorizer" AuthorizerConfigurationProperty = CustomJWTAuthorizerConfigurationProperty
  set newValue AuthorizerConfigurationProperty {..}
    = AuthorizerConfigurationProperty
        {customJWTAuthorizer = newValue, ..}