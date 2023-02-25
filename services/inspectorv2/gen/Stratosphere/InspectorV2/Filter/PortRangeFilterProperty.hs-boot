module Stratosphere.InspectorV2.Filter.PortRangeFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortRangeFilterProperty :: Prelude.Type
instance ToResourceProperties PortRangeFilterProperty
instance JSON.ToJSON PortRangeFilterProperty