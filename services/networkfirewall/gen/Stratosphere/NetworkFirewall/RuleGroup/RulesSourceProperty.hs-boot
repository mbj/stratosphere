module Stratosphere.NetworkFirewall.RuleGroup.RulesSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RulesSourceProperty :: Prelude.Type
instance ToResourceProperties RulesSourceProperty
instance JSON.ToJSON RulesSourceProperty