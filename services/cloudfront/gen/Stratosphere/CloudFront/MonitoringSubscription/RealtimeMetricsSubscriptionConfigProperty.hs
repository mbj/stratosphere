module Stratosphere.CloudFront.MonitoringSubscription.RealtimeMetricsSubscriptionConfigProperty (
        RealtimeMetricsSubscriptionConfigProperty(..),
        mkRealtimeMetricsSubscriptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RealtimeMetricsSubscriptionConfigProperty
  = RealtimeMetricsSubscriptionConfigProperty {realtimeMetricsSubscriptionStatus :: (Value Prelude.Text)}
mkRealtimeMetricsSubscriptionConfigProperty ::
  Value Prelude.Text -> RealtimeMetricsSubscriptionConfigProperty
mkRealtimeMetricsSubscriptionConfigProperty
  realtimeMetricsSubscriptionStatus
  = RealtimeMetricsSubscriptionConfigProperty
      {realtimeMetricsSubscriptionStatus = realtimeMetricsSubscriptionStatus}
instance ToResourceProperties RealtimeMetricsSubscriptionConfigProperty where
  toResourceProperties RealtimeMetricsSubscriptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::MonitoringSubscription.RealtimeMetricsSubscriptionConfig",
         properties = ["RealtimeMetricsSubscriptionStatus"
                         JSON..= realtimeMetricsSubscriptionStatus]}
instance JSON.ToJSON RealtimeMetricsSubscriptionConfigProperty where
  toJSON RealtimeMetricsSubscriptionConfigProperty {..}
    = JSON.object
        ["RealtimeMetricsSubscriptionStatus"
           JSON..= realtimeMetricsSubscriptionStatus]
instance Property "RealtimeMetricsSubscriptionStatus" RealtimeMetricsSubscriptionConfigProperty where
  type PropertyType "RealtimeMetricsSubscriptionStatus" RealtimeMetricsSubscriptionConfigProperty = Value Prelude.Text
  set newValue RealtimeMetricsSubscriptionConfigProperty {}
    = RealtimeMetricsSubscriptionConfigProperty
        {realtimeMetricsSubscriptionStatus = newValue, ..}