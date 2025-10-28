module Stratosphere.ElastiCache.CacheCluster.DestinationDetailsProperty (
        module Exports, DestinationDetailsProperty(..),
        mkDestinationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.CacheCluster.CloudWatchLogsDestinationDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.ElastiCache.CacheCluster.KinesisFirehoseDestinationDetailsProperty as Exports
import Stratosphere.ResourceProperties
data DestinationDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html>
    DestinationDetailsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html#cfn-elasticache-cachecluster-destinationdetails-cloudwatchlogsdetails>
                                cloudWatchLogsDetails :: (Prelude.Maybe CloudWatchLogsDestinationDetailsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html#cfn-elasticache-cachecluster-destinationdetails-kinesisfirehosedetails>
                                kinesisFirehoseDetails :: (Prelude.Maybe KinesisFirehoseDestinationDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationDetailsProperty :: DestinationDetailsProperty
mkDestinationDetailsProperty
  = DestinationDetailsProperty
      {haddock_workaround_ = (), cloudWatchLogsDetails = Prelude.Nothing,
       kinesisFirehoseDetails = Prelude.Nothing}
instance ToResourceProperties DestinationDetailsProperty where
  toResourceProperties DestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster.DestinationDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogsDetails"
                              Prelude.<$> cloudWatchLogsDetails,
                            (JSON..=) "KinesisFirehoseDetails"
                              Prelude.<$> kinesisFirehoseDetails])}
instance JSON.ToJSON DestinationDetailsProperty where
  toJSON DestinationDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsDetails"
                 Prelude.<$> cloudWatchLogsDetails,
               (JSON..=) "KinesisFirehoseDetails"
                 Prelude.<$> kinesisFirehoseDetails]))
instance Property "CloudWatchLogsDetails" DestinationDetailsProperty where
  type PropertyType "CloudWatchLogsDetails" DestinationDetailsProperty = CloudWatchLogsDestinationDetailsProperty
  set newValue DestinationDetailsProperty {..}
    = DestinationDetailsProperty
        {cloudWatchLogsDetails = Prelude.pure newValue, ..}
instance Property "KinesisFirehoseDetails" DestinationDetailsProperty where
  type PropertyType "KinesisFirehoseDetails" DestinationDetailsProperty = KinesisFirehoseDestinationDetailsProperty
  set newValue DestinationDetailsProperty {..}
    = DestinationDetailsProperty
        {kinesisFirehoseDetails = Prelude.pure newValue, ..}