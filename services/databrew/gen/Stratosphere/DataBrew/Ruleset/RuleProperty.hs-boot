module Stratosphere.DataBrew.Ruleset.RuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleProperty :: Prelude.Type
instance ToResourceProperties RuleProperty
instance JSON.ToJSON RuleProperty