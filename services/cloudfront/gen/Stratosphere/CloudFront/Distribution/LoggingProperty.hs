module Stratosphere.CloudFront.Distribution.LoggingProperty (
        LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html>
    LoggingProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-bucket>
                     bucket :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-includecookies>
                     includeCookies :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-prefix>
                     prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingProperty :: Value Prelude.Text -> LoggingProperty
mkLoggingProperty bucket
  = LoggingProperty
      {haddock_workaround_ = (), bucket = bucket,
       includeCookies = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Logging",
         supportsTags = Prelude.False,
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