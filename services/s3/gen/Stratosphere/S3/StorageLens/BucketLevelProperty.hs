module Stratosphere.S3.StorageLens.BucketLevelProperty (
        module Exports, BucketLevelProperty(..), mkBucketLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.ActivityMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AdvancedCostOptimizationMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AdvancedDataProtectionMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.DetailedStatusCodesMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.PrefixLevelProperty as Exports
import Stratosphere.ResourceProperties
data BucketLevelProperty
  = BucketLevelProperty {activityMetrics :: (Prelude.Maybe ActivityMetricsProperty),
                         advancedCostOptimizationMetrics :: (Prelude.Maybe AdvancedCostOptimizationMetricsProperty),
                         advancedDataProtectionMetrics :: (Prelude.Maybe AdvancedDataProtectionMetricsProperty),
                         detailedStatusCodesMetrics :: (Prelude.Maybe DetailedStatusCodesMetricsProperty),
                         prefixLevel :: (Prelude.Maybe PrefixLevelProperty)}
mkBucketLevelProperty :: BucketLevelProperty
mkBucketLevelProperty
  = BucketLevelProperty
      {activityMetrics = Prelude.Nothing,
       advancedCostOptimizationMetrics = Prelude.Nothing,
       advancedDataProtectionMetrics = Prelude.Nothing,
       detailedStatusCodesMetrics = Prelude.Nothing,
       prefixLevel = Prelude.Nothing}
instance ToResourceProperties BucketLevelProperty where
  toResourceProperties BucketLevelProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.BucketLevel",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActivityMetrics" Prelude.<$> activityMetrics,
                            (JSON..=) "AdvancedCostOptimizationMetrics"
                              Prelude.<$> advancedCostOptimizationMetrics,
                            (JSON..=) "AdvancedDataProtectionMetrics"
                              Prelude.<$> advancedDataProtectionMetrics,
                            (JSON..=) "DetailedStatusCodesMetrics"
                              Prelude.<$> detailedStatusCodesMetrics,
                            (JSON..=) "PrefixLevel" Prelude.<$> prefixLevel])}
instance JSON.ToJSON BucketLevelProperty where
  toJSON BucketLevelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActivityMetrics" Prelude.<$> activityMetrics,
               (JSON..=) "AdvancedCostOptimizationMetrics"
                 Prelude.<$> advancedCostOptimizationMetrics,
               (JSON..=) "AdvancedDataProtectionMetrics"
                 Prelude.<$> advancedDataProtectionMetrics,
               (JSON..=) "DetailedStatusCodesMetrics"
                 Prelude.<$> detailedStatusCodesMetrics,
               (JSON..=) "PrefixLevel" Prelude.<$> prefixLevel]))
instance Property "ActivityMetrics" BucketLevelProperty where
  type PropertyType "ActivityMetrics" BucketLevelProperty = ActivityMetricsProperty
  set newValue BucketLevelProperty {..}
    = BucketLevelProperty {activityMetrics = Prelude.pure newValue, ..}
instance Property "AdvancedCostOptimizationMetrics" BucketLevelProperty where
  type PropertyType "AdvancedCostOptimizationMetrics" BucketLevelProperty = AdvancedCostOptimizationMetricsProperty
  set newValue BucketLevelProperty {..}
    = BucketLevelProperty
        {advancedCostOptimizationMetrics = Prelude.pure newValue, ..}
instance Property "AdvancedDataProtectionMetrics" BucketLevelProperty where
  type PropertyType "AdvancedDataProtectionMetrics" BucketLevelProperty = AdvancedDataProtectionMetricsProperty
  set newValue BucketLevelProperty {..}
    = BucketLevelProperty
        {advancedDataProtectionMetrics = Prelude.pure newValue, ..}
instance Property "DetailedStatusCodesMetrics" BucketLevelProperty where
  type PropertyType "DetailedStatusCodesMetrics" BucketLevelProperty = DetailedStatusCodesMetricsProperty
  set newValue BucketLevelProperty {..}
    = BucketLevelProperty
        {detailedStatusCodesMetrics = Prelude.pure newValue, ..}
instance Property "PrefixLevel" BucketLevelProperty where
  type PropertyType "PrefixLevel" BucketLevelProperty = PrefixLevelProperty
  set newValue BucketLevelProperty {..}
    = BucketLevelProperty {prefixLevel = Prelude.pure newValue, ..}