module Stratosphere.QuickSight.Analysis.WaterfallVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WaterfallVisualProperty :: Prelude.Type
instance ToResourceProperties WaterfallVisualProperty
instance JSON.ToJSON WaterfallVisualProperty