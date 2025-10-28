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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-monitoringsubscription-realtimemetricssubscriptionconfig.html>
    RealtimeMetricsSubscriptionConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-monitoringsubscription-realtimemetricssubscriptionconfig.html#cfn-cloudfront-monitoringsubscription-realtimemetricssubscriptionconfig-realtimemetricssubscriptionstatus>
                                               realtimeMetricsSubscriptionStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRealtimeMetricsSubscriptionConfigProperty ::
  Value Prelude.Text -> RealtimeMetricsSubscriptionConfigProperty
mkRealtimeMetricsSubscriptionConfigProperty
  realtimeMetricsSubscriptionStatus
  = RealtimeMetricsSubscriptionConfigProperty
      {haddock_workaround_ = (),
       realtimeMetricsSubscriptionStatus = realtimeMetricsSubscriptionStatus}
instance ToResourceProperties RealtimeMetricsSubscriptionConfigProperty where
  toResourceProperties RealtimeMetricsSubscriptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::MonitoringSubscription.RealtimeMetricsSubscriptionConfig",
         supportsTags = Prelude.False,
         properties = ["RealtimeMetricsSubscriptionStatus"
                         JSON..= realtimeMetricsSubscriptionStatus]}
instance JSON.ToJSON RealtimeMetricsSubscriptionConfigProperty where
  toJSON RealtimeMetricsSubscriptionConfigProperty {..}
    = JSON.object
        ["RealtimeMetricsSubscriptionStatus"
           JSON..= realtimeMetricsSubscriptionStatus]
instance Property "RealtimeMetricsSubscriptionStatus" RealtimeMetricsSubscriptionConfigProperty where
  type PropertyType "RealtimeMetricsSubscriptionStatus" RealtimeMetricsSubscriptionConfigProperty = Value Prelude.Text
  set newValue RealtimeMetricsSubscriptionConfigProperty {..}
    = RealtimeMetricsSubscriptionConfigProperty
        {realtimeMetricsSubscriptionStatus = newValue, ..}