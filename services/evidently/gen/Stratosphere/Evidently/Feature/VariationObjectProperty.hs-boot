module Stratosphere.Evidently.Feature.VariationObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VariationObjectProperty :: Prelude.Type
instance ToResourceProperties VariationObjectProperty
instance JSON.ToJSON VariationObjectProperty