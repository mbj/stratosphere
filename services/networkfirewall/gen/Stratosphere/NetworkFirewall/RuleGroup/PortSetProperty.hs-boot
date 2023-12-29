module Stratosphere.NetworkFirewall.RuleGroup.PortSetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortSetProperty :: Prelude.Type
instance ToResourceProperties PortSetProperty
instance Prelude.Eq PortSetProperty
instance Prelude.Show PortSetProperty
instance JSON.ToJSON PortSetProperty