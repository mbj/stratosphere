module Stratosphere.QuickSight.Template.InsightVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InsightVisualProperty :: Prelude.Type
instance ToResourceProperties InsightVisualProperty
instance JSON.ToJSON InsightVisualProperty