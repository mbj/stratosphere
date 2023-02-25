module Stratosphere.KafkaConnect.Connector.ProvisionedCapacityProperty (
        ProvisionedCapacityProperty(..), mkProvisionedCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedCapacityProperty
  = ProvisionedCapacityProperty {mcuCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                 workerCount :: (Value Prelude.Integer)}
mkProvisionedCapacityProperty ::
  Value Prelude.Integer -> ProvisionedCapacityProperty
mkProvisionedCapacityProperty workerCount
  = ProvisionedCapacityProperty
      {workerCount = workerCount, mcuCount = Prelude.Nothing}
instance ToResourceProperties ProvisionedCapacityProperty where
  toResourceProperties ProvisionedCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ProvisionedCapacity",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["WorkerCount" JSON..= workerCount]
                           (Prelude.catMaybes [(JSON..=) "McuCount" Prelude.<$> mcuCount]))}
instance JSON.ToJSON ProvisionedCapacityProperty where
  toJSON ProvisionedCapacityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["WorkerCount" JSON..= workerCount]
              (Prelude.catMaybes [(JSON..=) "McuCount" Prelude.<$> mcuCount])))
instance Property "McuCount" ProvisionedCapacityProperty where
  type PropertyType "McuCount" ProvisionedCapacityProperty = Value Prelude.Integer
  set newValue ProvisionedCapacityProperty {..}
    = ProvisionedCapacityProperty
        {mcuCount = Prelude.pure newValue, ..}
instance Property "WorkerCount" ProvisionedCapacityProperty where
  type PropertyType "WorkerCount" ProvisionedCapacityProperty = Value Prelude.Integer
  set newValue ProvisionedCapacityProperty {..}
    = ProvisionedCapacityProperty {workerCount = newValue, ..}