module Stratosphere.S3.StorageLens.AdvancedCostOptimizationMetricsProperty (
        AdvancedCostOptimizationMetricsProperty(..),
        mkAdvancedCostOptimizationMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedCostOptimizationMetricsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-advancedcostoptimizationmetrics.html>
    AdvancedCostOptimizationMetricsProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-advancedcostoptimizationmetrics.html#cfn-s3-storagelens-advancedcostoptimizationmetrics-isenabled>
                                             isEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedCostOptimizationMetricsProperty ::
  AdvancedCostOptimizationMetricsProperty
mkAdvancedCostOptimizationMetricsProperty
  = AdvancedCostOptimizationMetricsProperty
      {haddock_workaround_ = (), isEnabled = Prelude.Nothing}
instance ToResourceProperties AdvancedCostOptimizationMetricsProperty where
  toResourceProperties AdvancedCostOptimizationMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AdvancedCostOptimizationMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled])}
instance JSON.ToJSON AdvancedCostOptimizationMetricsProperty where
  toJSON AdvancedCostOptimizationMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled]))
instance Property "IsEnabled" AdvancedCostOptimizationMetricsProperty where
  type PropertyType "IsEnabled" AdvancedCostOptimizationMetricsProperty = Value Prelude.Bool
  set newValue AdvancedCostOptimizationMetricsProperty {..}
    = AdvancedCostOptimizationMetricsProperty
        {isEnabled = Prelude.pure newValue, ..}