module Stratosphere.MSK.Cluster.BrokerLogsProperty (
        module Exports, BrokerLogsProperty(..), mkBrokerLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.CloudWatchLogsProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.FirehoseProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.S3Property as Exports
import Stratosphere.ResourceProperties
data BrokerLogsProperty
  = BrokerLogsProperty {cloudWatchLogs :: (Prelude.Maybe CloudWatchLogsProperty),
                        firehose :: (Prelude.Maybe FirehoseProperty),
                        s3 :: (Prelude.Maybe S3Property)}
mkBrokerLogsProperty :: BrokerLogsProperty
mkBrokerLogsProperty
  = BrokerLogsProperty
      {cloudWatchLogs = Prelude.Nothing, firehose = Prelude.Nothing,
       s3 = Prelude.Nothing}
instance ToResourceProperties BrokerLogsProperty where
  toResourceProperties BrokerLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.BrokerLogs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
                            (JSON..=) "Firehose" Prelude.<$> firehose,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON BrokerLogsProperty where
  toJSON BrokerLogsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
               (JSON..=) "Firehose" Prelude.<$> firehose,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "CloudWatchLogs" BrokerLogsProperty where
  type PropertyType "CloudWatchLogs" BrokerLogsProperty = CloudWatchLogsProperty
  set newValue BrokerLogsProperty {..}
    = BrokerLogsProperty {cloudWatchLogs = Prelude.pure newValue, ..}
instance Property "Firehose" BrokerLogsProperty where
  type PropertyType "Firehose" BrokerLogsProperty = FirehoseProperty
  set newValue BrokerLogsProperty {..}
    = BrokerLogsProperty {firehose = Prelude.pure newValue, ..}
instance Property "S3" BrokerLogsProperty where
  type PropertyType "S3" BrokerLogsProperty = S3Property
  set newValue BrokerLogsProperty {..}
    = BrokerLogsProperty {s3 = Prelude.pure newValue, ..}