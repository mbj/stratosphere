module Stratosphere.ECS.Service.TimeoutConfigurationProperty (
        TimeoutConfigurationProperty(..), mkTimeoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutConfigurationProperty
  = TimeoutConfigurationProperty {idleTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  perRequestTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeoutConfigurationProperty :: TimeoutConfigurationProperty
mkTimeoutConfigurationProperty
  = TimeoutConfigurationProperty
      {idleTimeoutSeconds = Prelude.Nothing,
       perRequestTimeoutSeconds = Prelude.Nothing}
instance ToResourceProperties TimeoutConfigurationProperty where
  toResourceProperties TimeoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.TimeoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleTimeoutSeconds" Prelude.<$> idleTimeoutSeconds,
                            (JSON..=) "PerRequestTimeoutSeconds"
                              Prelude.<$> perRequestTimeoutSeconds])}
instance JSON.ToJSON TimeoutConfigurationProperty where
  toJSON TimeoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleTimeoutSeconds" Prelude.<$> idleTimeoutSeconds,
               (JSON..=) "PerRequestTimeoutSeconds"
                 Prelude.<$> perRequestTimeoutSeconds]))
instance Property "IdleTimeoutSeconds" TimeoutConfigurationProperty where
  type PropertyType "IdleTimeoutSeconds" TimeoutConfigurationProperty = Value Prelude.Integer
  set newValue TimeoutConfigurationProperty {..}
    = TimeoutConfigurationProperty
        {idleTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "PerRequestTimeoutSeconds" TimeoutConfigurationProperty where
  type PropertyType "PerRequestTimeoutSeconds" TimeoutConfigurationProperty = Value Prelude.Integer
  set newValue TimeoutConfigurationProperty {..}
    = TimeoutConfigurationProperty
        {perRequestTimeoutSeconds = Prelude.pure newValue, ..}