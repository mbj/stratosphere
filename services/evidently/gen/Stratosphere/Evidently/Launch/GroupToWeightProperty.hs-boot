module Stratosphere.Evidently.Launch.GroupToWeightProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GroupToWeightProperty :: Prelude.Type
instance ToResourceProperties GroupToWeightProperty
instance JSON.ToJSON GroupToWeightProperty