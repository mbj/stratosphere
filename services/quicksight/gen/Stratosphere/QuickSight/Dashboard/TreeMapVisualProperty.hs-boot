module Stratosphere.QuickSight.Dashboard.TreeMapVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TreeMapVisualProperty :: Prelude.Type
instance ToResourceProperties TreeMapVisualProperty
instance JSON.ToJSON TreeMapVisualProperty