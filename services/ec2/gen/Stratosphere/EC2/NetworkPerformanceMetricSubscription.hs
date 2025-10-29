module Stratosphere.EC2.NetworkPerformanceMetricSubscription (
        NetworkPerformanceMetricSubscription(..),
        mkNetworkPerformanceMetricSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkPerformanceMetricSubscription
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkperformancemetricsubscription.html>
    NetworkPerformanceMetricSubscription {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkperformancemetricsubscription.html#cfn-ec2-networkperformancemetricsubscription-destination>
                                          destination :: (Value Prelude.Text),
                                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkperformancemetricsubscription.html#cfn-ec2-networkperformancemetricsubscription-metric>
                                          metric :: (Value Prelude.Text),
                                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkperformancemetricsubscription.html#cfn-ec2-networkperformancemetricsubscription-source>
                                          source :: (Value Prelude.Text),
                                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkperformancemetricsubscription.html#cfn-ec2-networkperformancemetricsubscription-statistic>
                                          statistic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkPerformanceMetricSubscription ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> NetworkPerformanceMetricSubscription
mkNetworkPerformanceMetricSubscription
  destination
  metric
  source
  statistic
  = NetworkPerformanceMetricSubscription
      {destination = destination, metric = metric, source = source,
       statistic = statistic}
instance ToResourceProperties NetworkPerformanceMetricSubscription where
  toResourceProperties NetworkPerformanceMetricSubscription {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkPerformanceMetricSubscription",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Metric" JSON..= metric, "Source" JSON..= source,
                       "Statistic" JSON..= statistic]}
instance JSON.ToJSON NetworkPerformanceMetricSubscription where
  toJSON NetworkPerformanceMetricSubscription {..}
    = JSON.object
        ["Destination" JSON..= destination, "Metric" JSON..= metric,
         "Source" JSON..= source, "Statistic" JSON..= statistic]
instance Property "Destination" NetworkPerformanceMetricSubscription where
  type PropertyType "Destination" NetworkPerformanceMetricSubscription = Value Prelude.Text
  set newValue NetworkPerformanceMetricSubscription {..}
    = NetworkPerformanceMetricSubscription {destination = newValue, ..}
instance Property "Metric" NetworkPerformanceMetricSubscription where
  type PropertyType "Metric" NetworkPerformanceMetricSubscription = Value Prelude.Text
  set newValue NetworkPerformanceMetricSubscription {..}
    = NetworkPerformanceMetricSubscription {metric = newValue, ..}
instance Property "Source" NetworkPerformanceMetricSubscription where
  type PropertyType "Source" NetworkPerformanceMetricSubscription = Value Prelude.Text
  set newValue NetworkPerformanceMetricSubscription {..}
    = NetworkPerformanceMetricSubscription {source = newValue, ..}
instance Property "Statistic" NetworkPerformanceMetricSubscription where
  type PropertyType "Statistic" NetworkPerformanceMetricSubscription = Value Prelude.Text
  set newValue NetworkPerformanceMetricSubscription {..}
    = NetworkPerformanceMetricSubscription {statistic = newValue, ..}