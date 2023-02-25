module Stratosphere.KafkaConnect.Connector.LogDeliveryProperty (
        module Exports, LogDeliveryProperty(..), mkLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.WorkerLogDeliveryProperty as Exports
import Stratosphere.ResourceProperties
data LogDeliveryProperty
  = LogDeliveryProperty {workerLogDelivery :: WorkerLogDeliveryProperty}
mkLogDeliveryProperty ::
  WorkerLogDeliveryProperty -> LogDeliveryProperty
mkLogDeliveryProperty workerLogDelivery
  = LogDeliveryProperty {workerLogDelivery = workerLogDelivery}
instance ToResourceProperties LogDeliveryProperty where
  toResourceProperties LogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.LogDelivery",
         properties = ["WorkerLogDelivery" JSON..= workerLogDelivery]}
instance JSON.ToJSON LogDeliveryProperty where
  toJSON LogDeliveryProperty {..}
    = JSON.object ["WorkerLogDelivery" JSON..= workerLogDelivery]
instance Property "WorkerLogDelivery" LogDeliveryProperty where
  type PropertyType "WorkerLogDelivery" LogDeliveryProperty = WorkerLogDeliveryProperty
  set newValue LogDeliveryProperty {}
    = LogDeliveryProperty {workerLogDelivery = newValue, ..}