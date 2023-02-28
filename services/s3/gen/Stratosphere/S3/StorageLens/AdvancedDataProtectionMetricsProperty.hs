module Stratosphere.S3.StorageLens.AdvancedDataProtectionMetricsProperty (
        AdvancedDataProtectionMetricsProperty(..),
        mkAdvancedDataProtectionMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedDataProtectionMetricsProperty
  = AdvancedDataProtectionMetricsProperty {isEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkAdvancedDataProtectionMetricsProperty ::
  AdvancedDataProtectionMetricsProperty
mkAdvancedDataProtectionMetricsProperty
  = AdvancedDataProtectionMetricsProperty
      {isEnabled = Prelude.Nothing}
instance ToResourceProperties AdvancedDataProtectionMetricsProperty where
  toResourceProperties AdvancedDataProtectionMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AdvancedDataProtectionMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled])}
instance JSON.ToJSON AdvancedDataProtectionMetricsProperty where
  toJSON AdvancedDataProtectionMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled]))
instance Property "IsEnabled" AdvancedDataProtectionMetricsProperty where
  type PropertyType "IsEnabled" AdvancedDataProtectionMetricsProperty = Value Prelude.Bool
  set newValue AdvancedDataProtectionMetricsProperty {}
    = AdvancedDataProtectionMetricsProperty
        {isEnabled = Prelude.pure newValue, ..}