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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html>
    StreamingDistributionConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-aliases>
                                         aliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-comment>
                                         comment :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-enabled>
                                         enabled :: (Value Prelude.Bool),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-logging>
                                         logging :: (Prelude.Maybe LoggingProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-priceclass>
                                         priceClass :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-s3origin>
                                         s3Origin :: S3OriginProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-trustedsigners>
                                         trustedSigners :: TrustedSignersProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), comment = comment, enabled = enabled,
       s3Origin = s3Origin, trustedSigners = trustedSigners,
       aliases = Prelude.Nothing, logging = Prelude.Nothing,
       priceClass = Prelude.Nothing}
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