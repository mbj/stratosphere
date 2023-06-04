module Stratosphere.QuickSight.Dashboard.BarChartVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BarChartVisualProperty :: Prelude.Type
instance ToResourceProperties BarChartVisualProperty
instance JSON.ToJSON BarChartVisualProperty