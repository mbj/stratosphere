module Stratosphere.KinesisFirehose.DeliveryStream.SecretsManagerConfigurationProperty (
        SecretsManagerConfigurationProperty(..),
        mkSecretsManagerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretsManagerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-secretsmanagerconfiguration.html>
    SecretsManagerConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-secretsmanagerconfiguration.html#cfn-kinesisfirehose-deliverystream-secretsmanagerconfiguration-enabled>
                                         enabled :: (Value Prelude.Bool),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-secretsmanagerconfiguration.html#cfn-kinesisfirehose-deliverystream-secretsmanagerconfiguration-rolearn>
                                         roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-secretsmanagerconfiguration.html#cfn-kinesisfirehose-deliverystream-secretsmanagerconfiguration-secretarn>
                                         secretARN :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretsManagerConfigurationProperty ::
  Value Prelude.Bool -> SecretsManagerConfigurationProperty
mkSecretsManagerConfigurationProperty enabled
  = SecretsManagerConfigurationProperty
      {haddock_workaround_ = (), enabled = enabled,
       roleARN = Prelude.Nothing, secretARN = Prelude.Nothing}
instance ToResourceProperties SecretsManagerConfigurationProperty where
  toResourceProperties SecretsManagerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SecretsManagerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "RoleARN" Prelude.<$> roleARN,
                               (JSON..=) "SecretARN" Prelude.<$> secretARN]))}
instance JSON.ToJSON SecretsManagerConfigurationProperty where
  toJSON SecretsManagerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "RoleARN" Prelude.<$> roleARN,
                  (JSON..=) "SecretARN" Prelude.<$> secretARN])))
instance Property "Enabled" SecretsManagerConfigurationProperty where
  type PropertyType "Enabled" SecretsManagerConfigurationProperty = Value Prelude.Bool
  set newValue SecretsManagerConfigurationProperty {..}
    = SecretsManagerConfigurationProperty {enabled = newValue, ..}
instance Property "RoleARN" SecretsManagerConfigurationProperty where
  type PropertyType "RoleARN" SecretsManagerConfigurationProperty = Value Prelude.Text
  set newValue SecretsManagerConfigurationProperty {..}
    = SecretsManagerConfigurationProperty
        {roleARN = Prelude.pure newValue, ..}
instance Property "SecretARN" SecretsManagerConfigurationProperty where
  type PropertyType "SecretARN" SecretsManagerConfigurationProperty = Value Prelude.Text
  set newValue SecretsManagerConfigurationProperty {..}
    = SecretsManagerConfigurationProperty
        {secretARN = Prelude.pure newValue, ..}