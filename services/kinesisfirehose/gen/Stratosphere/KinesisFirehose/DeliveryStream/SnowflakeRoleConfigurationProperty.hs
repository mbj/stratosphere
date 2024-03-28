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
  = SnowflakeRoleConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                        snowflakeRole :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeRoleConfigurationProperty ::
  SnowflakeRoleConfigurationProperty
mkSnowflakeRoleConfigurationProperty
  = SnowflakeRoleConfigurationProperty
      {enabled = Prelude.Nothing, snowflakeRole = Prelude.Nothing}
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