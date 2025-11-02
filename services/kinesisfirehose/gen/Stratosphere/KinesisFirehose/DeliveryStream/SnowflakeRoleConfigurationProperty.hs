module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeRoleConfigurationProperty (
        SnowflakeRoleConfigurationProperty(..),
        mkSnowflakeRoleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeRoleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakeroleconfiguration.html>
    SnowflakeRoleConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakeroleconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakeroleconfiguration-enabled>
                                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakeroleconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakeroleconfiguration-snowflakerole>
                                        snowflakeRole :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeRoleConfigurationProperty ::
  SnowflakeRoleConfigurationProperty
mkSnowflakeRoleConfigurationProperty
  = SnowflakeRoleConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       snowflakeRole = Prelude.Nothing}
instance ToResourceProperties SnowflakeRoleConfigurationProperty where
  toResourceProperties SnowflakeRoleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SnowflakeRoleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "SnowflakeRole" Prelude.<$> snowflakeRole])}
instance JSON.ToJSON SnowflakeRoleConfigurationProperty where
  toJSON SnowflakeRoleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "SnowflakeRole" Prelude.<$> snowflakeRole]))
instance Property "Enabled" SnowflakeRoleConfigurationProperty where
  type PropertyType "Enabled" SnowflakeRoleConfigurationProperty = Value Prelude.Bool
  set newValue SnowflakeRoleConfigurationProperty {..}
    = SnowflakeRoleConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "SnowflakeRole" SnowflakeRoleConfigurationProperty where
  type PropertyType "SnowflakeRole" SnowflakeRoleConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeRoleConfigurationProperty {..}
    = SnowflakeRoleConfigurationProperty
        {snowflakeRole = Prelude.pure newValue, ..}