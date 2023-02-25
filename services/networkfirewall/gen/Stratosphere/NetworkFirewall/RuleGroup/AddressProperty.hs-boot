module Stratosphere.NetworkFirewall.RuleGroup.AddressProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AddressProperty :: Prelude.Type
instance ToResourceProperties AddressProperty
instance JSON.ToJSON AddressProperty