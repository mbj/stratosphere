module Stratosphere.NetworkFirewall.RuleGroup.StatelessRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatelessRuleProperty :: Prelude.Type
instance ToResourceProperties StatelessRuleProperty
instance JSON.ToJSON StatelessRuleProperty