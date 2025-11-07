module Stratosphere.BedrockAgentCore.Runtime.AuthorizerConfigurationProperty (
        module Exports, AuthorizerConfigurationProperty(..),
        mkAuthorizerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.CustomJWTAuthorizerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AuthorizerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-authorizerconfiguration.html>
    AuthorizerConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-authorizerconfiguration.html#cfn-bedrockagentcore-runtime-authorizerconfiguration-customjwtauthorizer>
                                     customJWTAuthorizer :: (Prelude.Maybe CustomJWTAuthorizerConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizerConfigurationProperty ::
  AuthorizerConfigurationProperty
mkAuthorizerConfigurationProperty
  = AuthorizerConfigurationProperty
      {haddock_workaround_ = (), customJWTAuthorizer = Prelude.Nothing}
instance ToResourceProperties AuthorizerConfigurationProperty where
  toResourceProperties AuthorizerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.AuthorizerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomJWTAuthorizer" Prelude.<$> customJWTAuthorizer])}
instance JSON.ToJSON AuthorizerConfigurationProperty where
  toJSON AuthorizerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomJWTAuthorizer" Prelude.<$> customJWTAuthorizer]))
instance Property "CustomJWTAuthorizer" AuthorizerConfigurationProperty where
  type PropertyType "CustomJWTAuthorizer" AuthorizerConfigurationProperty = CustomJWTAuthorizerConfigurationProperty
  set newValue AuthorizerConfigurationProperty {..}
    = AuthorizerConfigurationProperty
        {customJWTAuthorizer = Prelude.pure newValue, ..}