module Stratosphere.WAFv2.RuleGroup.RuleActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleActionProperty :: Prelude.Type
instance ToResourceProperties RuleActionProperty
instance JSON.ToJSON RuleActionProperty