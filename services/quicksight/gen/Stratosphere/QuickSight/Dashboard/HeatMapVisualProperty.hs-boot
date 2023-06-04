module Stratosphere.QuickSight.Dashboard.HeatMapVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HeatMapVisualProperty :: Prelude.Type
instance ToResourceProperties HeatMapVisualProperty
instance JSON.ToJSON HeatMapVisualProperty