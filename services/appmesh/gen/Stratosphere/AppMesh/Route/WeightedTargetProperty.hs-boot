module Stratosphere.AppMesh.Route.WeightedTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WeightedTargetProperty :: Prelude.Type
instance ToResourceProperties WeightedTargetProperty
instance Prelude.Eq WeightedTargetProperty
instance Prelude.Show WeightedTargetProperty
instance JSON.ToJSON WeightedTargetProperty