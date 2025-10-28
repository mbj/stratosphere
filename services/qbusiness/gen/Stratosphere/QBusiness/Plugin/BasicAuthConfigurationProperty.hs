module Stratosphere.QBusiness.Plugin.BasicAuthConfigurationProperty (
        BasicAuthConfigurationProperty(..),
        mkBasicAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-basicauthconfiguration.html>
    BasicAuthConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-basicauthconfiguration.html#cfn-qbusiness-plugin-basicauthconfiguration-rolearn>
                                    roleArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-basicauthconfiguration.html#cfn-qbusiness-plugin-basicauthconfiguration-secretarn>
                                    secretArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BasicAuthConfigurationProperty
mkBasicAuthConfigurationProperty roleArn secretArn
  = BasicAuthConfigurationProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       secretArn = secretArn}
instance ToResourceProperties BasicAuthConfigurationProperty where
  toResourceProperties BasicAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin.BasicAuthConfiguration",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "SecretArn" JSON..= secretArn]}
instance JSON.ToJSON BasicAuthConfigurationProperty where
  toJSON BasicAuthConfigurationProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn, "SecretArn" JSON..= secretArn]
instance Property "RoleArn" BasicAuthConfigurationProperty where
  type PropertyType "RoleArn" BasicAuthConfigurationProperty = Value Prelude.Text
  set newValue BasicAuthConfigurationProperty {..}
    = BasicAuthConfigurationProperty {roleArn = newValue, ..}
instance Property "SecretArn" BasicAuthConfigurationProperty where
  type PropertyType "SecretArn" BasicAuthConfigurationProperty = Value Prelude.Text
  set newValue BasicAuthConfigurationProperty {..}
    = BasicAuthConfigurationProperty {secretArn = newValue, ..}