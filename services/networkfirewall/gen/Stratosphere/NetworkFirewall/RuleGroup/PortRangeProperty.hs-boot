module Stratosphere.NetworkFirewall.RuleGroup.PortRangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortRangeProperty :: Prelude.Type
instance ToResourceProperties PortRangeProperty
instance JSON.ToJSON PortRangeProperty