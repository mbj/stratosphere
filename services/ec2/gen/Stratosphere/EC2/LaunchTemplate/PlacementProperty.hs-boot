module Stratosphere.EC2.LaunchTemplate.PlacementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlacementProperty :: Prelude.Type
instance ToResourceProperties PlacementProperty
instance Prelude.Eq PlacementProperty
instance Prelude.Show PlacementProperty
instance JSON.ToJSON PlacementProperty