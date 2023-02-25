module Stratosphere.EC2.EC2Fleet.PlacementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlacementProperty :: Prelude.Type
instance ToResourceProperties PlacementProperty
instance JSON.ToJSON PlacementProperty