module Stratosphere.EMR.Cluster.PlacementTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlacementTypeProperty :: Prelude.Type
instance ToResourceProperties PlacementTypeProperty
instance Prelude.Eq PlacementTypeProperty
instance Prelude.Show PlacementTypeProperty
instance JSON.ToJSON PlacementTypeProperty