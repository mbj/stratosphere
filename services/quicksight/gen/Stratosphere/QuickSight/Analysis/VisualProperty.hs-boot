module Stratosphere.QuickSight.Analysis.VisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VisualProperty :: Prelude.Type
instance ToResourceProperties VisualProperty
instance JSON.ToJSON VisualProperty