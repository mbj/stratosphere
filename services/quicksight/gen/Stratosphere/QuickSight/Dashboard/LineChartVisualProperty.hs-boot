module Stratosphere.QuickSight.Dashboard.LineChartVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LineChartVisualProperty :: Prelude.Type
instance ToResourceProperties LineChartVisualProperty
instance JSON.ToJSON LineChartVisualProperty