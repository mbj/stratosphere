module Stratosphere.GameLift.Fleet.LocationCapacityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LocationCapacityProperty :: Prelude.Type
instance ToResourceProperties LocationCapacityProperty
instance JSON.ToJSON LocationCapacityProperty