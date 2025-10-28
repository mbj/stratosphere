module Stratosphere.KinesisFirehose.DeliveryStream.AuthenticationConfigurationProperty (
        AuthenticationConfigurationProperty(..),
        mkAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-authenticationconfiguration.html>
    AuthenticationConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-authenticationconfiguration.html#cfn-kinesisfirehose-deliverystream-authenticationconfiguration-connectivity>
                                         connectivity :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-authenticationconfiguration.html#cfn-kinesisfirehose-deliverystream-authenticationconfiguration-rolearn>
                                         roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AuthenticationConfigurationProperty
mkAuthenticationConfigurationProperty connectivity roleARN
  = AuthenticationConfigurationProperty
      {haddock_workaround_ = (), connectivity = connectivity,
       roleARN = roleARN}
instance ToResourceProperties AuthenticationConfigurationProperty where
  toResourceProperties AuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AuthenticationConfiguration",
         supportsTags = Prelude.False,
         properties = ["Connectivity" JSON..= connectivity,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON AuthenticationConfigurationProperty where
  toJSON AuthenticationConfigurationProperty {..}
    = JSON.object
        ["Connectivity" JSON..= connectivity, "RoleARN" JSON..= roleARN]
instance Property "Connectivity" AuthenticationConfigurationProperty where
  type PropertyType "Connectivity" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty {connectivity = newValue, ..}
instance Property "RoleARN" AuthenticationConfigurationProperty where
  type PropertyType "RoleARN" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty {roleARN = newValue, ..}