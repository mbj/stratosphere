module Stratosphere.ElastiCache.CacheCluster.CloudWatchLogsDestinationDetailsProperty (
        CloudWatchLogsDestinationDetailsProperty(..),
        mkCloudWatchLogsDestinationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsDestinationDetailsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-cloudwatchlogsdestinationdetails.html>
    CloudWatchLogsDestinationDetailsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-cloudwatchlogsdestinationdetails.html#cfn-elasticache-cachecluster-cloudwatchlogsdestinationdetails-loggroup>
                                              logGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsDestinationDetailsProperty ::
  Value Prelude.Text -> CloudWatchLogsDestinationDetailsProperty
mkCloudWatchLogsDestinationDetailsProperty logGroup
  = CloudWatchLogsDestinationDetailsProperty {logGroup = logGroup}
instance ToResourceProperties CloudWatchLogsDestinationDetailsProperty where
  toResourceProperties CloudWatchLogsDestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster.CloudWatchLogsDestinationDetails",
         supportsTags = Prelude.False,
         properties = ["LogGroup" JSON..= logGroup]}
instance JSON.ToJSON CloudWatchLogsDestinationDetailsProperty where
  toJSON CloudWatchLogsDestinationDetailsProperty {..}
    = JSON.object ["LogGroup" JSON..= logGroup]
instance Property "LogGroup" CloudWatchLogsDestinationDetailsProperty where
  type PropertyType "LogGroup" CloudWatchLogsDestinationDetailsProperty = Value Prelude.Text
  set newValue CloudWatchLogsDestinationDetailsProperty {}
    = CloudWatchLogsDestinationDetailsProperty
        {logGroup = newValue, ..}