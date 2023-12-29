module Stratosphere.CloudFront.MonitoringSubscription (
        module Exports, MonitoringSubscription(..),
        mkMonitoringSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.MonitoringSubscription.MonitoringSubscriptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringSubscription
  = MonitoringSubscription {distributionId :: (Value Prelude.Text),
                            monitoringSubscription :: MonitoringSubscriptionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringSubscription ::
  Value Prelude.Text
  -> MonitoringSubscriptionProperty -> MonitoringSubscription
mkMonitoringSubscription distributionId monitoringSubscription
  = MonitoringSubscription
      {distributionId = distributionId,
       monitoringSubscription = monitoringSubscription}
instance ToResourceProperties MonitoringSubscription where
  toResourceProperties MonitoringSubscription {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::MonitoringSubscription",
         supportsTags = Prelude.False,
         properties = ["DistributionId" JSON..= distributionId,
                       "MonitoringSubscription" JSON..= monitoringSubscription]}
instance JSON.ToJSON MonitoringSubscription where
  toJSON MonitoringSubscription {..}
    = JSON.object
        ["DistributionId" JSON..= distributionId,
         "MonitoringSubscription" JSON..= monitoringSubscription]
instance Property "DistributionId" MonitoringSubscription where
  type PropertyType "DistributionId" MonitoringSubscription = Value Prelude.Text
  set newValue MonitoringSubscription {..}
    = MonitoringSubscription {distributionId = newValue, ..}
instance Property "MonitoringSubscription" MonitoringSubscription where
  type PropertyType "MonitoringSubscription" MonitoringSubscription = MonitoringSubscriptionProperty
  set newValue MonitoringSubscription {..}
    = MonitoringSubscription {monitoringSubscription = newValue, ..}