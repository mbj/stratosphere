module Stratosphere.CloudFront.Distribution.S3OriginConfigProperty (
        S3OriginConfigProperty(..), mkS3OriginConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OriginConfigProperty
  = S3OriginConfigProperty {originAccessIdentity :: (Prelude.Maybe (Value Prelude.Text))}
mkS3OriginConfigProperty :: S3OriginConfigProperty
mkS3OriginConfigProperty
  = S3OriginConfigProperty {originAccessIdentity = Prelude.Nothing}
instance ToResourceProperties S3OriginConfigProperty where
  toResourceProperties S3OriginConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.S3OriginConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OriginAccessIdentity"
                              Prelude.<$> originAccessIdentity])}
instance JSON.ToJSON S3OriginConfigProperty where
  toJSON S3OriginConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OriginAccessIdentity"
                 Prelude.<$> originAccessIdentity]))
instance Property "OriginAccessIdentity" S3OriginConfigProperty where
  type PropertyType "OriginAccessIdentity" S3OriginConfigProperty = Value Prelude.Text
  set newValue S3OriginConfigProperty {}
    = S3OriginConfigProperty
        {originAccessIdentity = Prelude.pure newValue, ..}