module Stratosphere.CloudFront.Distribution.LoggingProperty (
        LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingProperty
  = LoggingProperty {bucket :: (Value Prelude.Text),
                     includeCookies :: (Prelude.Maybe (Value Prelude.Bool)),
                     prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkLoggingProperty :: Value Prelude.Text -> LoggingProperty
mkLoggingProperty bucket
  = LoggingProperty
      {bucket = bucket, includeCookies = Prelude.Nothing,
       prefix = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Logging",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeCookies" Prelude.<$> includeCookies,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeCookies" Prelude.<$> includeCookies,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Bucket" LoggingProperty where
  type PropertyType "Bucket" LoggingProperty = Value Prelude.Text
  set newValue LoggingProperty {..}
    = LoggingProperty {bucket = newValue, ..}
instance Property "IncludeCookies" LoggingProperty where
  type PropertyType "IncludeCookies" LoggingProperty = Value Prelude.Bool
  set newValue LoggingProperty {..}
    = LoggingProperty {includeCookies = Prelude.pure newValue, ..}
instance Property "Prefix" LoggingProperty where
  type PropertyType "Prefix" LoggingProperty = Value Prelude.Text
  set newValue LoggingProperty {..}
    = LoggingProperty {prefix = Prelude.pure newValue, ..}