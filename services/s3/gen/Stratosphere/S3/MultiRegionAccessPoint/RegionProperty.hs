module Stratosphere.S3.MultiRegionAccessPoint.RegionProperty (
        RegionProperty(..), mkRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionProperty
  = RegionProperty {bucket :: (Value Prelude.Text),
                    bucketAccountId :: (Prelude.Maybe (Value Prelude.Text))}
mkRegionProperty :: Value Prelude.Text -> RegionProperty
mkRegionProperty bucket
  = RegionProperty
      {bucket = bucket, bucketAccountId = Prelude.Nothing}
instance ToResourceProperties RegionProperty where
  toResourceProperties RegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPoint.Region",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId]))}
instance JSON.ToJSON RegionProperty where
  toJSON RegionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId])))
instance Property "Bucket" RegionProperty where
  type PropertyType "Bucket" RegionProperty = Value Prelude.Text
  set newValue RegionProperty {..}
    = RegionProperty {bucket = newValue, ..}
instance Property "BucketAccountId" RegionProperty where
  type PropertyType "BucketAccountId" RegionProperty = Value Prelude.Text
  set newValue RegionProperty {..}
    = RegionProperty {bucketAccountId = Prelude.pure newValue, ..}