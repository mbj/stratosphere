module Stratosphere.BedrockAgentCore.Runtime.CustomJWTAuthorizerConfigurationProperty (
        CustomJWTAuthorizerConfigurationProperty(..),
        mkCustomJWTAuthorizerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomJWTAuthorizerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-customjwtauthorizerconfiguration.html>
    CustomJWTAuthorizerConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-runtime-customjwtauthorizerconfiguration-allowedaudience>
                                              allowedAudience :: (Prelude.Maybe (ValueList Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-runtime-customjwtauthorizerconfiguration-allowedclients>
                                              allowedClients :: (Prelude.Maybe (ValueList Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-runtime-customjwtauthorizerconfiguration-discoveryurl>
                                              discoveryUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomJWTAuthorizerConfigurationProperty ::
  Value Prelude.Text -> CustomJWTAuthorizerConfigurationProperty
mkCustomJWTAuthorizerConfigurationProperty discoveryUrl
  = CustomJWTAuthorizerConfigurationProperty
      {haddock_workaround_ = (), discoveryUrl = discoveryUrl,
       allowedAudience = Prelude.Nothing,
       allowedClients = Prelude.Nothing}
instance ToResourceProperties CustomJWTAuthorizerConfigurationProperty where
  toResourceProperties CustomJWTAuthorizerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.CustomJWTAuthorizerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiscoveryUrl" JSON..= discoveryUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedAudience" Prelude.<$> allowedAudience,
                               (JSON..=) "AllowedClients" Prelude.<$> allowedClients]))}
instance JSON.ToJSON CustomJWTAuthorizerConfigurationProperty where
  toJSON CustomJWTAuthorizerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiscoveryUrl" JSON..= discoveryUrl]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedAudience" Prelude.<$> allowedAudience,
                  (JSON..=) "AllowedClients" Prelude.<$> allowedClients])))
instance Property "AllowedAudience" CustomJWTAuthorizerConfigurationProperty where
  type PropertyType "AllowedAudience" CustomJWTAuthorizerConfigurationProperty = ValueList Prelude.Text
  set newValue CustomJWTAuthorizerConfigurationProperty {..}
    = CustomJWTAuthorizerConfigurationProperty
        {allowedAudience = Prelude.pure newValue, ..}
instance Property "AllowedClients" CustomJWTAuthorizerConfigurationProperty where
  type PropertyType "AllowedClients" CustomJWTAuthorizerConfigurationProperty = ValueList Prelude.Text
  set newValue CustomJWTAuthorizerConfigurationProperty {..}
    = CustomJWTAuthorizerConfigurationProperty
        {allowedClients = Prelude.pure newValue, ..}
instance Property "DiscoveryUrl" CustomJWTAuthorizerConfigurationProperty where
  type PropertyType "DiscoveryUrl" CustomJWTAuthorizerConfigurationProperty = Value Prelude.Text
  set newValue CustomJWTAuthorizerConfigurationProperty {..}
    = CustomJWTAuthorizerConfigurationProperty
        {discoveryUrl = newValue, ..}