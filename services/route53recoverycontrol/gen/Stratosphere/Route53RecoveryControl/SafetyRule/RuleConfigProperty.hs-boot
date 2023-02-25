module Stratosphere.Route53RecoveryControl.SafetyRule.RuleConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleConfigProperty :: Prelude.Type
instance ToResourceProperties RuleConfigProperty
instance JSON.ToJSON RuleConfigProperty