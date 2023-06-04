module Stratosphere.QuickSight.Template.LayoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LayoutProperty :: Prelude.Type
instance ToResourceProperties LayoutProperty
instance JSON.ToJSON LayoutProperty