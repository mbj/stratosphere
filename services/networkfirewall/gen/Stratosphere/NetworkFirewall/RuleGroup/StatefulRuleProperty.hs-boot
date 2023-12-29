module Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatefulRuleProperty :: Prelude.Type
instance ToResourceProperties StatefulRuleProperty
instance Prelude.Eq StatefulRuleProperty
instance Prelude.Show StatefulRuleProperty
instance JSON.ToJSON StatefulRuleProperty