module Stratosphere.QuickSight.Analysis.EmptyVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EmptyVisualProperty :: Prelude.Type
instance ToResourceProperties EmptyVisualProperty
instance JSON.ToJSON EmptyVisualProperty