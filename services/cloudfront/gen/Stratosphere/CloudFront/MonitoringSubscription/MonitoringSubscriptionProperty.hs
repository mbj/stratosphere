module Stratosphere.CloudFront.MonitoringSubscription.MonitoringSubscriptionProperty (
        module Exports, MonitoringSubscriptionProperty(..),
        mkMonitoringSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.MonitoringSubscription.RealtimeMetricsSubscriptionConfigProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringSubscriptionProperty
  = MonitoringSubscriptionProperty {realtimeMetricsSubscriptionConfig :: (Prelude.Maybe RealtimeMetricsSubscriptionConfigProperty)}
mkMonitoringSubscriptionProperty :: MonitoringSubscriptionProperty
mkMonitoringSubscriptionProperty
  = MonitoringSubscriptionProperty
      {realtimeMetricsSubscriptionConfig = Prelude.Nothing}
instance ToResourceProperties MonitoringSubscriptionProperty where
  toResourceProperties MonitoringSubscriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::MonitoringSubscription.MonitoringSubscription",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RealtimeMetricsSubscriptionConfig"
                              Prelude.<$> realtimeMetricsSubscriptionConfig])}
instance JSON.ToJSON MonitoringSubscriptionProperty where
  toJSON MonitoringSubscriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RealtimeMetricsSubscriptionConfig"
                 Prelude.<$> realtimeMetricsSubscriptionConfig]))
instance Property "RealtimeMetricsSubscriptionConfig" MonitoringSubscriptionProperty where
  type PropertyType "RealtimeMetricsSubscriptionConfig" MonitoringSubscriptionProperty = RealtimeMetricsSubscriptionConfigProperty
  set newValue MonitoringSubscriptionProperty {}
    = MonitoringSubscriptionProperty
        {realtimeMetricsSubscriptionConfig = Prelude.pure newValue, ..}