module Stratosphere.S3.StorageLens.BucketsAndRegionsProperty (
        BucketsAndRegionsProperty(..), mkBucketsAndRegionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BucketsAndRegionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html>
    BucketsAndRegionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html#cfn-s3-storagelens-bucketsandregions-buckets>
                               buckets :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html#cfn-s3-storagelens-bucketsandregions-regions>
                               regions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucketsAndRegionsProperty :: BucketsAndRegionsProperty
mkBucketsAndRegionsProperty
  = BucketsAndRegionsProperty
      {haddock_workaround_ = (), buckets = Prelude.Nothing,
       regions = Prelude.Nothing}
instance ToResourceProperties BucketsAndRegionsProperty where
  toResourceProperties BucketsAndRegionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.BucketsAndRegions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Buckets" Prelude.<$> buckets,
                            (JSON..=) "Regions" Prelude.<$> regions])}
instance JSON.ToJSON BucketsAndRegionsProperty where
  toJSON BucketsAndRegionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Buckets" Prelude.<$> buckets,
               (JSON..=) "Regions" Prelude.<$> regions]))
instance Property "Buckets" BucketsAndRegionsProperty where
  type PropertyType "Buckets" BucketsAndRegionsProperty = ValueList Prelude.Text
  set newValue BucketsAndRegionsProperty {..}
    = BucketsAndRegionsProperty {buckets = Prelude.pure newValue, ..}
instance Property "Regions" BucketsAndRegionsProperty where
  type PropertyType "Regions" BucketsAndRegionsProperty = ValueList Prelude.Text
  set newValue BucketsAndRegionsProperty {..}
    = BucketsAndRegionsProperty {regions = Prelude.pure newValue, ..}