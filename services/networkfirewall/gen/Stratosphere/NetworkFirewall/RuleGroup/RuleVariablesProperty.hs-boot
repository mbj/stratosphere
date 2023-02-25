module Stratosphere.NetworkFirewall.RuleGroup.RuleVariablesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleVariablesProperty :: Prelude.Type
instance ToResourceProperties RuleVariablesProperty
instance JSON.ToJSON RuleVariablesProperty