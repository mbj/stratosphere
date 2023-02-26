module Stratosphere.EC2.CapacityReservation.TagSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagSpecificationProperty :: Prelude.Type
instance ToResourceProperties TagSpecificationProperty
instance JSON.ToJSON TagSpecificationProperty