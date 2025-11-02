module Stratosphere.S3.MultiRegionAccessPoint.RegionProperty (
        RegionProperty(..), mkRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-multiregionaccesspoint-region.html>
    RegionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-multiregionaccesspoint-region.html#cfn-s3-multiregionaccesspoint-region-bucket>
                    bucket :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-multiregionaccesspoint-region.html#cfn-s3-multiregionaccesspoint-region-bucketaccountid>
                    bucketAccountId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionProperty :: Value Prelude.Text -> RegionProperty
mkRegionProperty bucket
  = RegionProperty
      {haddock_workaround_ = (), bucket = bucket,
       bucketAccountId = Prelude.Nothing}
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