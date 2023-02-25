module Stratosphere.CloudFront.StreamingDistribution.LoggingProperty (
        LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingProperty
  = LoggingProperty {bucket :: (Value Prelude.Text),
                     enabled :: (Value Prelude.Bool),
                     prefix :: (Value Prelude.Text)}
mkLoggingProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> Value Prelude.Text -> LoggingProperty
mkLoggingProperty bucket enabled prefix
  = LoggingProperty
      {bucket = bucket, enabled = enabled, prefix = prefix}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution.Logging",
         properties = ["Bucket" JSON..= bucket, "Enabled" JSON..= enabled,
                       "Prefix" JSON..= prefix]}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        ["Bucket" JSON..= bucket, "Enabled" JSON..= enabled,
         "Prefix" JSON..= prefix]
instance Property "Bucket" LoggingProperty where
  type PropertyType "Bucket" LoggingProperty = Value Prelude.Text
  set newValue LoggingProperty {..}
    = LoggingProperty {bucket = newValue, ..}
instance Property "Enabled" LoggingProperty where
  type PropertyType "Enabled" LoggingProperty = Value Prelude.Bool
  set newValue LoggingProperty {..}
    = LoggingProperty {enabled = newValue, ..}
instance Property "Prefix" LoggingProperty where
  type PropertyType "Prefix" LoggingProperty = Value Prelude.Text
  set newValue LoggingProperty {..}
    = LoggingProperty {prefix = newValue, ..}