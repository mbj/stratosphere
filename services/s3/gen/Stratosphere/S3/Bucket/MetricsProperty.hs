module Stratosphere.S3.Bucket.MetricsProperty (
        module Exports, MetricsProperty(..), mkMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationTimeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsProperty
  = MetricsProperty {eventThreshold :: (Prelude.Maybe ReplicationTimeValueProperty),
                     status :: (Value Prelude.Text)}
mkMetricsProperty :: Value Prelude.Text -> MetricsProperty
mkMetricsProperty status
  = MetricsProperty
      {status = status, eventThreshold = Prelude.Nothing}
instance ToResourceProperties MetricsProperty where
  toResourceProperties MetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Metrics",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "EventThreshold" Prelude.<$> eventThreshold]))}
instance JSON.ToJSON MetricsProperty where
  toJSON MetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "EventThreshold" Prelude.<$> eventThreshold])))
instance Property "EventThreshold" MetricsProperty where
  type PropertyType "EventThreshold" MetricsProperty = ReplicationTimeValueProperty
  set newValue MetricsProperty {..}
    = MetricsProperty {eventThreshold = Prelude.pure newValue, ..}
instance Property "Status" MetricsProperty where
  type PropertyType "Status" MetricsProperty = Value Prelude.Text
  set newValue MetricsProperty {..}
    = MetricsProperty {status = newValue, ..}