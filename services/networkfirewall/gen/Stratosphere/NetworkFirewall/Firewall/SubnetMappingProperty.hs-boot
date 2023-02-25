module Stratosphere.NetworkFirewall.Firewall.SubnetMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SubnetMappingProperty :: Prelude.Type
instance ToResourceProperties SubnetMappingProperty
instance JSON.ToJSON SubnetMappingProperty