module Stratosphere.SSM.PatchBaseline.RuleGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuleGroupProperty :: Prelude.Type
instance ToResourceProperties RuleGroupProperty
instance Prelude.Eq RuleGroupProperty
instance Prelude.Show RuleGroupProperty
instance JSON.ToJSON RuleGroupProperty