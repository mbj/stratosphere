module Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty (
        CloudWatchLoggingOptionsProperty(..),
        mkCloudWatchLoggingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLoggingOptionsProperty
  = CloudWatchLoggingOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                      logStreamName :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchLoggingOptionsProperty ::
  CloudWatchLoggingOptionsProperty
mkCloudWatchLoggingOptionsProperty
  = CloudWatchLoggingOptionsProperty
      {enabled = Prelude.Nothing, logGroupName = Prelude.Nothing,
       logStreamName = Prelude.Nothing}
instance ToResourceProperties CloudWatchLoggingOptionsProperty where
  toResourceProperties CloudWatchLoggingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                            (JSON..=) "LogStreamName" Prelude.<$> logStreamName])}
instance JSON.ToJSON CloudWatchLoggingOptionsProperty where
  toJSON CloudWatchLoggingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
               (JSON..=) "LogStreamName" Prelude.<$> logStreamName]))
instance Property "Enabled" CloudWatchLoggingOptionsProperty where
  type PropertyType "Enabled" CloudWatchLoggingOptionsProperty = Value Prelude.Bool
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "LogGroupName" CloudWatchLoggingOptionsProperty where
  type PropertyType "LogGroupName" CloudWatchLoggingOptionsProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {logGroupName = Prelude.pure newValue, ..}
instance Property "LogStreamName" CloudWatchLoggingOptionsProperty where
  type PropertyType "LogStreamName" CloudWatchLoggingOptionsProperty = Value Prelude.Text
  set newValue CloudWatchLoggingOptionsProperty {..}
    = CloudWatchLoggingOptionsProperty
        {logStreamName = Prelude.pure newValue, ..}