module Stratosphere.NetworkFirewall.RuleGroup.RuleOptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleOptionProperty :: Prelude.Type
instance ToResourceProperties RuleOptionProperty
instance JSON.ToJSON RuleOptionProperty