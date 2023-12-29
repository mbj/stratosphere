module Stratosphere.EC2.NetworkAclEntry.PortRangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortRangeProperty :: Prelude.Type
instance ToResourceProperties PortRangeProperty
instance Prelude.Eq PortRangeProperty
instance Prelude.Show PortRangeProperty
instance JSON.ToJSON PortRangeProperty