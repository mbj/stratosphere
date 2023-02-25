module Stratosphere.NetworkFirewall.FirewallPolicy.CustomActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomActionProperty :: Prelude.Type
instance ToResourceProperties CustomActionProperty
instance JSON.ToJSON CustomActionProperty