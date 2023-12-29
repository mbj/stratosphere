module Stratosphere.SSM.PatchBaseline.RuleGroupProperty (
        module Exports, RuleGroupProperty(..), mkRuleGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.RuleProperty as Exports
import Stratosphere.ResourceProperties
data RuleGroupProperty
  = RuleGroupProperty {patchRules :: (Prelude.Maybe [RuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroupProperty :: RuleGroupProperty
mkRuleGroupProperty
  = RuleGroupProperty {patchRules = Prelude.Nothing}
instance ToResourceProperties RuleGroupProperty where
  toResourceProperties RuleGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline.RuleGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PatchRules" Prelude.<$> patchRules])}
instance JSON.ToJSON RuleGroupProperty where
  toJSON RuleGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PatchRules" Prelude.<$> patchRules]))
instance Property "PatchRules" RuleGroupProperty where
  type PropertyType "PatchRules" RuleGroupProperty = [RuleProperty]
  set newValue RuleGroupProperty {}
    = RuleGroupProperty {patchRules = Prelude.pure newValue, ..}