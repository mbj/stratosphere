module Stratosphere.EC2.SpotFleet.InstanceIpv6AddressProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InstanceIpv6AddressProperty :: Prelude.Type
instance ToResourceProperties InstanceIpv6AddressProperty
instance JSON.ToJSON InstanceIpv6AddressProperty