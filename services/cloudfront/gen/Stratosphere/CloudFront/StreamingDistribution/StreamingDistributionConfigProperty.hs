module Stratosphere.CloudFront.StreamingDistribution.StreamingDistributionConfigProperty (
        module Exports, StreamingDistributionConfigProperty(..),
        mkStreamingDistributionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.StreamingDistribution.LoggingProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.StreamingDistribution.S3OriginProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.StreamingDistribution.TrustedSignersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamingDistributionConfigProperty
  = StreamingDistributionConfigProperty {aliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         comment :: (Value Prelude.Text),
                                         enabled :: (Value Prelude.Bool),
                                         logging :: (Prelude.Maybe LoggingProperty),
                                         priceClass :: (Prelude.Maybe (Value Prelude.Text)),
                                         s3Origin :: S3OriginProperty,
                                         trustedSigners :: TrustedSignersProperty}
mkStreamingDistributionConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool
     -> S3OriginProperty
        -> TrustedSignersProperty -> StreamingDistributionConfigProperty
mkStreamingDistributionConfigProperty
  comment
  enabled
  s3Origin
  trustedSigners
  = StreamingDistributionConfigProperty
      {comment = comment, enabled = enabled, s3Origin = s3Origin,
       trustedSigners = trustedSigners, aliases = Prelude.Nothing,
       logging = Prelude.Nothing, priceClass = Prelude.Nothing}
instance ToResourceProperties StreamingDistributionConfigProperty where
  toResourceProperties StreamingDistributionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution.StreamingDistributionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Comment" JSON..= comment, "Enabled" JSON..= enabled,
                            "S3Origin" JSON..= s3Origin,
                            "TrustedSigners" JSON..= trustedSigners]
                           (Prelude.catMaybes
                              [(JSON..=) "Aliases" Prelude.<$> aliases,
                               (JSON..=) "Logging" Prelude.<$> logging,
                               (JSON..=) "PriceClass" Prelude.<$> priceClass]))}
instance JSON.ToJSON StreamingDistributionConfigProperty where
  toJSON StreamingDistributionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Comment" JSON..= comment, "Enabled" JSON..= enabled,
               "S3Origin" JSON..= s3Origin,
               "TrustedSigners" JSON..= trustedSigners]
              (Prelude.catMaybes
                 [(JSON..=) "Aliases" Prelude.<$> aliases,
                  (JSON..=) "Logging" Prelude.<$> logging,
                  (JSON..=) "PriceClass" Prelude.<$> priceClass])))
instance Property "Aliases" StreamingDistributionConfigProperty where
  type PropertyType "Aliases" StreamingDistributionConfigProperty = ValueList Prelude.Text
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty
        {aliases = Prelude.pure newValue, ..}
instance Property "Comment" StreamingDistributionConfigProperty where
  type PropertyType "Comment" StreamingDistributionConfigProperty = Value Prelude.Text
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty {comment = newValue, ..}
instance Property "Enabled" StreamingDistributionConfigProperty where
  type PropertyType "Enabled" StreamingDistributionConfigProperty = Value Prelude.Bool
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty {enabled = newValue, ..}
instance Property "Logging" StreamingDistributionConfigProperty where
  type PropertyType "Logging" StreamingDistributionConfigProperty = LoggingProperty
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty
        {logging = Prelude.pure newValue, ..}
instance Property "PriceClass" StreamingDistributionConfigProperty where
  type PropertyType "PriceClass" StreamingDistributionConfigProperty = Value Prelude.Text
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty
        {priceClass = Prelude.pure newValue, ..}
instance Property "S3Origin" StreamingDistributionConfigProperty where
  type PropertyType "S3Origin" StreamingDistributionConfigProperty = S3OriginProperty
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty {s3Origin = newValue, ..}
instance Property "TrustedSigners" StreamingDistributionConfigProperty where
  type PropertyType "TrustedSigners" StreamingDistributionConfigProperty = TrustedSignersProperty
  set newValue StreamingDistributionConfigProperty {..}
    = StreamingDistributionConfigProperty
        {trustedSigners = newValue, ..}