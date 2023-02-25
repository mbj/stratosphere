module Stratosphere.Glue.Crawler.S3TargetProperty (
        S3TargetProperty(..), mkS3TargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3TargetProperty
  = S3TargetProperty {connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                      dlqEventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                      eventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                      exclusions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                      path :: (Prelude.Maybe (Value Prelude.Text)),
                      sampleSize :: (Prelude.Maybe (Value Prelude.Integer))}
mkS3TargetProperty :: S3TargetProperty
mkS3TargetProperty
  = S3TargetProperty
      {connectionName = Prelude.Nothing,
       dlqEventQueueArn = Prelude.Nothing,
       eventQueueArn = Prelude.Nothing, exclusions = Prelude.Nothing,
       path = Prelude.Nothing, sampleSize = Prelude.Nothing}
instance ToResourceProperties S3TargetProperty where
  toResourceProperties S3TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.S3Target",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "DlqEventQueueArn" Prelude.<$> dlqEventQueueArn,
                            (JSON..=) "EventQueueArn" Prelude.<$> eventQueueArn,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "SampleSize" Prelude.<$> sampleSize])}
instance JSON.ToJSON S3TargetProperty where
  toJSON S3TargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "DlqEventQueueArn" Prelude.<$> dlqEventQueueArn,
               (JSON..=) "EventQueueArn" Prelude.<$> eventQueueArn,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "SampleSize" Prelude.<$> sampleSize]))
instance Property "ConnectionName" S3TargetProperty where
  type PropertyType "ConnectionName" S3TargetProperty = Value Prelude.Text
  set newValue S3TargetProperty {..}
    = S3TargetProperty {connectionName = Prelude.pure newValue, ..}
instance Property "DlqEventQueueArn" S3TargetProperty where
  type PropertyType "DlqEventQueueArn" S3TargetProperty = Value Prelude.Text
  set newValue S3TargetProperty {..}
    = S3TargetProperty {dlqEventQueueArn = Prelude.pure newValue, ..}
instance Property "EventQueueArn" S3TargetProperty where
  type PropertyType "EventQueueArn" S3TargetProperty = Value Prelude.Text
  set newValue S3TargetProperty {..}
    = S3TargetProperty {eventQueueArn = Prelude.pure newValue, ..}
instance Property "Exclusions" S3TargetProperty where
  type PropertyType "Exclusions" S3TargetProperty = ValueList (Value Prelude.Text)
  set newValue S3TargetProperty {..}
    = S3TargetProperty {exclusions = Prelude.pure newValue, ..}
instance Property "Path" S3TargetProperty where
  type PropertyType "Path" S3TargetProperty = Value Prelude.Text
  set newValue S3TargetProperty {..}
    = S3TargetProperty {path = Prelude.pure newValue, ..}
instance Property "SampleSize" S3TargetProperty where
  type PropertyType "SampleSize" S3TargetProperty = Value Prelude.Integer
  set newValue S3TargetProperty {..}
    = S3TargetProperty {sampleSize = Prelude.pure newValue, ..}