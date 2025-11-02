module Stratosphere.KafkaConnect.Connector.ProvisionedCapacityProperty (
        ProvisionedCapacityProperty(..), mkProvisionedCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedCapacityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-provisionedcapacity.html>
    ProvisionedCapacityProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-provisionedcapacity.html#cfn-kafkaconnect-connector-provisionedcapacity-mcucount>
                                 mcuCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-provisionedcapacity.html#cfn-kafkaconnect-connector-provisionedcapacity-workercount>
                                 workerCount :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionedCapacityProperty ::
  Value Prelude.Integer -> ProvisionedCapacityProperty
mkProvisionedCapacityProperty workerCount
  = ProvisionedCapacityProperty
      {haddock_workaround_ = (), workerCount = workerCount,
       mcuCount = Prelude.Nothing}
instance ToResourceProperties ProvisionedCapacityProperty where
  toResourceProperties ProvisionedCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ProvisionedCapacity",
         supportsTags = Prelude.False,
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