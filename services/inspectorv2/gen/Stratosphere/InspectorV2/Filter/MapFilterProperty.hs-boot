module Stratosphere.InspectorV2.Filter.MapFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MapFilterProperty :: Prelude.Type
instance ToResourceProperties MapFilterProperty
instance JSON.ToJSON MapFilterProperty