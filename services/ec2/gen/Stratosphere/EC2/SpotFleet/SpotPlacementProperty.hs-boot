module Stratosphere.EC2.SpotFleet.SpotPlacementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpotPlacementProperty :: Prelude.Type
instance ToResourceProperties SpotPlacementProperty
instance Prelude.Eq SpotPlacementProperty
instance Prelude.Show SpotPlacementProperty
instance JSON.ToJSON SpotPlacementProperty