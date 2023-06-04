module Stratosphere.QuickSight.Analysis.HistogramVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HistogramVisualProperty :: Prelude.Type
instance ToResourceProperties HistogramVisualProperty
instance JSON.ToJSON HistogramVisualProperty