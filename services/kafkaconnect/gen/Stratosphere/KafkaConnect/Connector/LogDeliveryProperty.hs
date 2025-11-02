module Stratosphere.KafkaConnect.Connector.LogDeliveryProperty (
        module Exports, LogDeliveryProperty(..), mkLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.WorkerLogDeliveryProperty as Exports
import Stratosphere.ResourceProperties
data LogDeliveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-logdelivery.html>
    LogDeliveryProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-logdelivery.html#cfn-kafkaconnect-connector-logdelivery-workerlogdelivery>
                         workerLogDelivery :: WorkerLogDeliveryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDeliveryProperty ::
  WorkerLogDeliveryProperty -> LogDeliveryProperty
mkLogDeliveryProperty workerLogDelivery
  = LogDeliveryProperty
      {haddock_workaround_ = (), workerLogDelivery = workerLogDelivery}
instance ToResourceProperties LogDeliveryProperty where
  toResourceProperties LogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.LogDelivery",
         supportsTags = Prelude.False,
         properties = ["WorkerLogDelivery" JSON..= workerLogDelivery]}
instance JSON.ToJSON LogDeliveryProperty where
  toJSON LogDeliveryProperty {..}
    = JSON.object ["WorkerLogDelivery" JSON..= workerLogDelivery]
instance Property "WorkerLogDelivery" LogDeliveryProperty where
  type PropertyType "WorkerLogDelivery" LogDeliveryProperty = WorkerLogDeliveryProperty
  set newValue LogDeliveryProperty {..}
    = LogDeliveryProperty {workerLogDelivery = newValue, ..}