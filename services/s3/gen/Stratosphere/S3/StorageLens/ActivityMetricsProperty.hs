module Stratosphere.S3.StorageLens.ActivityMetricsProperty (
        ActivityMetricsProperty(..), mkActivityMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActivityMetricsProperty
  = ActivityMetricsProperty {isEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkActivityMetricsProperty :: ActivityMetricsProperty
mkActivityMetricsProperty
  = ActivityMetricsProperty {isEnabled = Prelude.Nothing}
instance ToResourceProperties ActivityMetricsProperty where
  toResourceProperties ActivityMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.ActivityMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled])}
instance JSON.ToJSON ActivityMetricsProperty where
  toJSON ActivityMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled]))
instance Property "IsEnabled" ActivityMetricsProperty where
  type PropertyType "IsEnabled" ActivityMetricsProperty = Value Prelude.Bool
  set newValue ActivityMetricsProperty {}
    = ActivityMetricsProperty {isEnabled = Prelude.pure newValue, ..}