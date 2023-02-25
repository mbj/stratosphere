module Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatefulRuleProperty :: Prelude.Type
instance ToResourceProperties StatefulRuleProperty
instance JSON.ToJSON StatefulRuleProperty