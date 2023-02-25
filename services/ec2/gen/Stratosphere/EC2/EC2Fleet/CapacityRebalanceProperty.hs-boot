module Stratosphere.EC2.EC2Fleet.CapacityRebalanceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CapacityRebalanceProperty :: Prelude.Type
instance ToResourceProperties CapacityRebalanceProperty
instance JSON.ToJSON CapacityRebalanceProperty