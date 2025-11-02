module Stratosphere.S3.StorageLens.AccountLevelProperty (
        module Exports, AccountLevelProperty(..), mkAccountLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.ActivityMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AdvancedCostOptimizationMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AdvancedDataProtectionMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.BucketLevelProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.DetailedStatusCodesMetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.StorageLensGroupLevelProperty as Exports
import Stratosphere.ResourceProperties
data AccountLevelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html>
    AccountLevelProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-activitymetrics>
                          activityMetrics :: (Prelude.Maybe ActivityMetricsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-advancedcostoptimizationmetrics>
                          advancedCostOptimizationMetrics :: (Prelude.Maybe AdvancedCostOptimizationMetricsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-advanceddataprotectionmetrics>
                          advancedDataProtectionMetrics :: (Prelude.Maybe AdvancedDataProtectionMetricsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-bucketlevel>
                          bucketLevel :: BucketLevelProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-detailedstatuscodesmetrics>
                          detailedStatusCodesMetrics :: (Prelude.Maybe DetailedStatusCodesMetricsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-storagelensgrouplevel>
                          storageLensGroupLevel :: (Prelude.Maybe StorageLensGroupLevelProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountLevelProperty ::
  BucketLevelProperty -> AccountLevelProperty
mkAccountLevelProperty bucketLevel
  = AccountLevelProperty
      {haddock_workaround_ = (), bucketLevel = bucketLevel,
       activityMetrics = Prelude.Nothing,
       advancedCostOptimizationMetrics = Prelude.Nothing,
       advancedDataProtectionMetrics = Prelude.Nothing,
       detailedStatusCodesMetrics = Prelude.Nothing,
       storageLensGroupLevel = Prelude.Nothing}
instance ToResourceProperties AccountLevelProperty where
  toResourceProperties AccountLevelProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AccountLevel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketLevel" JSON..= bucketLevel]
                           (Prelude.catMaybes
                              [(JSON..=) "ActivityMetrics" Prelude.<$> activityMetrics,
                               (JSON..=) "AdvancedCostOptimizationMetrics"
                                 Prelude.<$> advancedCostOptimizationMetrics,
                               (JSON..=) "AdvancedDataProtectionMetrics"
                                 Prelude.<$> advancedDataProtectionMetrics,
                               (JSON..=) "DetailedStatusCodesMetrics"
                                 Prelude.<$> detailedStatusCodesMetrics,
                               (JSON..=) "StorageLensGroupLevel"
                                 Prelude.<$> storageLensGroupLevel]))}
instance JSON.ToJSON AccountLevelProperty where
  toJSON AccountLevelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketLevel" JSON..= bucketLevel]
              (Prelude.catMaybes
                 [(JSON..=) "ActivityMetrics" Prelude.<$> activityMetrics,
                  (JSON..=) "AdvancedCostOptimizationMetrics"
                    Prelude.<$> advancedCostOptimizationMetrics,
                  (JSON..=) "AdvancedDataProtectionMetrics"
                    Prelude.<$> advancedDataProtectionMetrics,
                  (JSON..=) "DetailedStatusCodesMetrics"
                    Prelude.<$> detailedStatusCodesMetrics,
                  (JSON..=) "StorageLensGroupLevel"
                    Prelude.<$> storageLensGroupLevel])))
instance Property "ActivityMetrics" AccountLevelProperty where
  type PropertyType "ActivityMetrics" AccountLevelProperty = ActivityMetricsProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty
        {activityMetrics = Prelude.pure newValue, ..}
instance Property "AdvancedCostOptimizationMetrics" AccountLevelProperty where
  type PropertyType "AdvancedCostOptimizationMetrics" AccountLevelProperty = AdvancedCostOptimizationMetricsProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty
        {advancedCostOptimizationMetrics = Prelude.pure newValue, ..}
instance Property "AdvancedDataProtectionMetrics" AccountLevelProperty where
  type PropertyType "AdvancedDataProtectionMetrics" AccountLevelProperty = AdvancedDataProtectionMetricsProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty
        {advancedDataProtectionMetrics = Prelude.pure newValue, ..}
instance Property "BucketLevel" AccountLevelProperty where
  type PropertyType "BucketLevel" AccountLevelProperty = BucketLevelProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty {bucketLevel = newValue, ..}
instance Property "DetailedStatusCodesMetrics" AccountLevelProperty where
  type PropertyType "DetailedStatusCodesMetrics" AccountLevelProperty = DetailedStatusCodesMetricsProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty
        {detailedStatusCodesMetrics = Prelude.pure newValue, ..}
instance Property "StorageLensGroupLevel" AccountLevelProperty where
  type PropertyType "StorageLensGroupLevel" AccountLevelProperty = StorageLensGroupLevelProperty
  set newValue AccountLevelProperty {..}
    = AccountLevelProperty
        {storageLensGroupLevel = Prelude.pure newValue, ..}