module Stratosphere.QuickSight.Analysis.PieChartVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PieChartVisualProperty :: Prelude.Type
instance ToResourceProperties PieChartVisualProperty
instance JSON.ToJSON PieChartVisualProperty