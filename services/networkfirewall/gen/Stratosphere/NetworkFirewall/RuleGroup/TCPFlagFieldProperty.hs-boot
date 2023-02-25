module Stratosphere.NetworkFirewall.RuleGroup.TCPFlagFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TCPFlagFieldProperty :: Prelude.Type
instance ToResourceProperties TCPFlagFieldProperty
instance JSON.ToJSON TCPFlagFieldProperty