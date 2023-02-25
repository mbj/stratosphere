module Stratosphere.EMRServerless.Application.AutoStopConfigurationProperty (
        AutoStopConfigurationProperty(..), mkAutoStopConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoStopConfigurationProperty
  = AutoStopConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   idleTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
mkAutoStopConfigurationProperty :: AutoStopConfigurationProperty
mkAutoStopConfigurationProperty
  = AutoStopConfigurationProperty
      {enabled = Prelude.Nothing, idleTimeoutMinutes = Prelude.Nothing}
instance ToResourceProperties AutoStopConfigurationProperty where
  toResourceProperties AutoStopConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.AutoStopConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IdleTimeoutMinutes" Prelude.<$> idleTimeoutMinutes])}
instance JSON.ToJSON AutoStopConfigurationProperty where
  toJSON AutoStopConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IdleTimeoutMinutes" Prelude.<$> idleTimeoutMinutes]))
instance Property "Enabled" AutoStopConfigurationProperty where
  type PropertyType "Enabled" AutoStopConfigurationProperty = Value Prelude.Bool
  set newValue AutoStopConfigurationProperty {..}
    = AutoStopConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "IdleTimeoutMinutes" AutoStopConfigurationProperty where
  type PropertyType "IdleTimeoutMinutes" AutoStopConfigurationProperty = Value Prelude.Integer
  set newValue AutoStopConfigurationProperty {..}
    = AutoStopConfigurationProperty
        {idleTimeoutMinutes = Prelude.pure newValue, ..}