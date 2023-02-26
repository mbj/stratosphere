module Stratosphere.S3.StorageLens.BucketsAndRegionsProperty (
        BucketsAndRegionsProperty(..), mkBucketsAndRegionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BucketsAndRegionsProperty
  = BucketsAndRegionsProperty {buckets :: (Prelude.Maybe (ValueList Prelude.Text)),
                               regions :: (Prelude.Maybe (ValueList Prelude.Text))}
mkBucketsAndRegionsProperty :: BucketsAndRegionsProperty
mkBucketsAndRegionsProperty
  = BucketsAndRegionsProperty
      {buckets = Prelude.Nothing, regions = Prelude.Nothing}
instance ToResourceProperties BucketsAndRegionsProperty where
  toResourceProperties BucketsAndRegionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.BucketsAndRegions",
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