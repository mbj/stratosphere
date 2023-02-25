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
  = DestinationDetailsProperty {cloudWatchLogsDetails :: (Prelude.Maybe CloudWatchLogsDestinationDetailsProperty),
                                kinesisFirehoseDetails :: (Prelude.Maybe KinesisFirehoseDestinationDetailsProperty)}
mkDestinationDetailsProperty :: DestinationDetailsProperty
mkDestinationDetailsProperty
  = DestinationDetailsProperty
      {cloudWatchLogsDetails = Prelude.Nothing,
       kinesisFirehoseDetails = Prelude.Nothing}
instance ToResourceProperties DestinationDetailsProperty where
  toResourceProperties DestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster.DestinationDetails",
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