module Stratosphere.NetworkFirewall.RuleGroup.RuleGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleGroupProperty :: Prelude.Type
instance ToResourceProperties RuleGroupProperty
instance JSON.ToJSON RuleGroupProperty