module Stratosphere.GreengrassV2.Deployment.IoTJobTimeoutConfigProperty (
        IoTJobTimeoutConfigProperty(..), mkIoTJobTimeoutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobTimeoutConfigProperty
  = IoTJobTimeoutConfigProperty {inProgressTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
mkIoTJobTimeoutConfigProperty :: IoTJobTimeoutConfigProperty
mkIoTJobTimeoutConfigProperty
  = IoTJobTimeoutConfigProperty
      {inProgressTimeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties IoTJobTimeoutConfigProperty where
  toResourceProperties IoTJobTimeoutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobTimeoutConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InProgressTimeoutInMinutes"
                              Prelude.<$> inProgressTimeoutInMinutes])}
instance JSON.ToJSON IoTJobTimeoutConfigProperty where
  toJSON IoTJobTimeoutConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InProgressTimeoutInMinutes"
                 Prelude.<$> inProgressTimeoutInMinutes]))
instance Property "InProgressTimeoutInMinutes" IoTJobTimeoutConfigProperty where
  type PropertyType "InProgressTimeoutInMinutes" IoTJobTimeoutConfigProperty = Value Prelude.Integer
  set newValue IoTJobTimeoutConfigProperty {}
    = IoTJobTimeoutConfigProperty
        {inProgressTimeoutInMinutes = Prelude.pure newValue, ..}