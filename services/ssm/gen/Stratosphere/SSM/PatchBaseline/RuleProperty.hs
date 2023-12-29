module Stratosphere.SSM.PatchBaseline.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.PatchFilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.PatchStringDateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {approveAfterDays :: (Prelude.Maybe (Value Prelude.Integer)),
                  approveUntilDate :: (Prelude.Maybe PatchStringDateProperty),
                  complianceLevel :: (Prelude.Maybe (Value Prelude.Text)),
                  enableNonSecurity :: (Prelude.Maybe (Value Prelude.Bool)),
                  patchFilterGroup :: (Prelude.Maybe PatchFilterGroupProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: RuleProperty
mkRuleProperty
  = RuleProperty
      {approveAfterDays = Prelude.Nothing,
       approveUntilDate = Prelude.Nothing,
       complianceLevel = Prelude.Nothing,
       enableNonSecurity = Prelude.Nothing,
       patchFilterGroup = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApproveAfterDays" Prelude.<$> approveAfterDays,
                            (JSON..=) "ApproveUntilDate" Prelude.<$> approveUntilDate,
                            (JSON..=) "ComplianceLevel" Prelude.<$> complianceLevel,
                            (JSON..=) "EnableNonSecurity" Prelude.<$> enableNonSecurity,
                            (JSON..=) "PatchFilterGroup" Prelude.<$> patchFilterGroup])}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApproveAfterDays" Prelude.<$> approveAfterDays,
               (JSON..=) "ApproveUntilDate" Prelude.<$> approveUntilDate,
               (JSON..=) "ComplianceLevel" Prelude.<$> complianceLevel,
               (JSON..=) "EnableNonSecurity" Prelude.<$> enableNonSecurity,
               (JSON..=) "PatchFilterGroup" Prelude.<$> patchFilterGroup]))
instance Property "ApproveAfterDays" RuleProperty where
  type PropertyType "ApproveAfterDays" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty {approveAfterDays = Prelude.pure newValue, ..}
instance Property "ApproveUntilDate" RuleProperty where
  type PropertyType "ApproveUntilDate" RuleProperty = PatchStringDateProperty
  set newValue RuleProperty {..}
    = RuleProperty {approveUntilDate = Prelude.pure newValue, ..}
instance Property "ComplianceLevel" RuleProperty where
  type PropertyType "ComplianceLevel" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {complianceLevel = Prelude.pure newValue, ..}
instance Property "EnableNonSecurity" RuleProperty where
  type PropertyType "EnableNonSecurity" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {enableNonSecurity = Prelude.pure newValue, ..}
instance Property "PatchFilterGroup" RuleProperty where
  type PropertyType "PatchFilterGroup" RuleProperty = PatchFilterGroupProperty
  set newValue RuleProperty {..}
    = RuleProperty {patchFilterGroup = Prelude.pure newValue, ..}