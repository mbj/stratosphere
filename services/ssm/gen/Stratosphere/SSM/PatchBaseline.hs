module Stratosphere.SSM.PatchBaseline (
        module Exports, PatchBaseline(..), mkPatchBaseline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.PatchFilterGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.PatchSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.RuleGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PatchBaseline
  = PatchBaseline {approvalRules :: (Prelude.Maybe RuleGroupProperty),
                   approvedPatches :: (Prelude.Maybe (ValueList Prelude.Text)),
                   approvedPatchesComplianceLevel :: (Prelude.Maybe (Value Prelude.Text)),
                   approvedPatchesEnableNonSecurity :: (Prelude.Maybe (Value Prelude.Bool)),
                   defaultBaseline :: (Prelude.Maybe (Value Prelude.Bool)),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   globalFilters :: (Prelude.Maybe PatchFilterGroupProperty),
                   name :: (Value Prelude.Text),
                   operatingSystem :: (Prelude.Maybe (Value Prelude.Text)),
                   patchGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                   rejectedPatches :: (Prelude.Maybe (ValueList Prelude.Text)),
                   rejectedPatchesAction :: (Prelude.Maybe (Value Prelude.Text)),
                   sources :: (Prelude.Maybe [PatchSourceProperty]),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPatchBaseline :: Value Prelude.Text -> PatchBaseline
mkPatchBaseline name
  = PatchBaseline
      {name = name, approvalRules = Prelude.Nothing,
       approvedPatches = Prelude.Nothing,
       approvedPatchesComplianceLevel = Prelude.Nothing,
       approvedPatchesEnableNonSecurity = Prelude.Nothing,
       defaultBaseline = Prelude.Nothing, description = Prelude.Nothing,
       globalFilters = Prelude.Nothing, operatingSystem = Prelude.Nothing,
       patchGroups = Prelude.Nothing, rejectedPatches = Prelude.Nothing,
       rejectedPatchesAction = Prelude.Nothing, sources = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PatchBaseline where
  toResourceProperties PatchBaseline {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ApprovalRules" Prelude.<$> approvalRules,
                               (JSON..=) "ApprovedPatches" Prelude.<$> approvedPatches,
                               (JSON..=) "ApprovedPatchesComplianceLevel"
                                 Prelude.<$> approvedPatchesComplianceLevel,
                               (JSON..=) "ApprovedPatchesEnableNonSecurity"
                                 Prelude.<$> approvedPatchesEnableNonSecurity,
                               (JSON..=) "DefaultBaseline" Prelude.<$> defaultBaseline,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GlobalFilters" Prelude.<$> globalFilters,
                               (JSON..=) "OperatingSystem" Prelude.<$> operatingSystem,
                               (JSON..=) "PatchGroups" Prelude.<$> patchGroups,
                               (JSON..=) "RejectedPatches" Prelude.<$> rejectedPatches,
                               (JSON..=) "RejectedPatchesAction"
                                 Prelude.<$> rejectedPatchesAction,
                               (JSON..=) "Sources" Prelude.<$> sources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PatchBaseline where
  toJSON PatchBaseline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ApprovalRules" Prelude.<$> approvalRules,
                  (JSON..=) "ApprovedPatches" Prelude.<$> approvedPatches,
                  (JSON..=) "ApprovedPatchesComplianceLevel"
                    Prelude.<$> approvedPatchesComplianceLevel,
                  (JSON..=) "ApprovedPatchesEnableNonSecurity"
                    Prelude.<$> approvedPatchesEnableNonSecurity,
                  (JSON..=) "DefaultBaseline" Prelude.<$> defaultBaseline,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GlobalFilters" Prelude.<$> globalFilters,
                  (JSON..=) "OperatingSystem" Prelude.<$> operatingSystem,
                  (JSON..=) "PatchGroups" Prelude.<$> patchGroups,
                  (JSON..=) "RejectedPatches" Prelude.<$> rejectedPatches,
                  (JSON..=) "RejectedPatchesAction"
                    Prelude.<$> rejectedPatchesAction,
                  (JSON..=) "Sources" Prelude.<$> sources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApprovalRules" PatchBaseline where
  type PropertyType "ApprovalRules" PatchBaseline = RuleGroupProperty
  set newValue PatchBaseline {..}
    = PatchBaseline {approvalRules = Prelude.pure newValue, ..}
instance Property "ApprovedPatches" PatchBaseline where
  type PropertyType "ApprovedPatches" PatchBaseline = ValueList Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {approvedPatches = Prelude.pure newValue, ..}
instance Property "ApprovedPatchesComplianceLevel" PatchBaseline where
  type PropertyType "ApprovedPatchesComplianceLevel" PatchBaseline = Value Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline
        {approvedPatchesComplianceLevel = Prelude.pure newValue, ..}
instance Property "ApprovedPatchesEnableNonSecurity" PatchBaseline where
  type PropertyType "ApprovedPatchesEnableNonSecurity" PatchBaseline = Value Prelude.Bool
  set newValue PatchBaseline {..}
    = PatchBaseline
        {approvedPatchesEnableNonSecurity = Prelude.pure newValue, ..}
instance Property "DefaultBaseline" PatchBaseline where
  type PropertyType "DefaultBaseline" PatchBaseline = Value Prelude.Bool
  set newValue PatchBaseline {..}
    = PatchBaseline {defaultBaseline = Prelude.pure newValue, ..}
instance Property "Description" PatchBaseline where
  type PropertyType "Description" PatchBaseline = Value Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {description = Prelude.pure newValue, ..}
instance Property "GlobalFilters" PatchBaseline where
  type PropertyType "GlobalFilters" PatchBaseline = PatchFilterGroupProperty
  set newValue PatchBaseline {..}
    = PatchBaseline {globalFilters = Prelude.pure newValue, ..}
instance Property "Name" PatchBaseline where
  type PropertyType "Name" PatchBaseline = Value Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {name = newValue, ..}
instance Property "OperatingSystem" PatchBaseline where
  type PropertyType "OperatingSystem" PatchBaseline = Value Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {operatingSystem = Prelude.pure newValue, ..}
instance Property "PatchGroups" PatchBaseline where
  type PropertyType "PatchGroups" PatchBaseline = ValueList Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {patchGroups = Prelude.pure newValue, ..}
instance Property "RejectedPatches" PatchBaseline where
  type PropertyType "RejectedPatches" PatchBaseline = ValueList Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {rejectedPatches = Prelude.pure newValue, ..}
instance Property "RejectedPatchesAction" PatchBaseline where
  type PropertyType "RejectedPatchesAction" PatchBaseline = Value Prelude.Text
  set newValue PatchBaseline {..}
    = PatchBaseline {rejectedPatchesAction = Prelude.pure newValue, ..}
instance Property "Sources" PatchBaseline where
  type PropertyType "Sources" PatchBaseline = [PatchSourceProperty]
  set newValue PatchBaseline {..}
    = PatchBaseline {sources = Prelude.pure newValue, ..}
instance Property "Tags" PatchBaseline where
  type PropertyType "Tags" PatchBaseline = [Tag]
  set newValue PatchBaseline {..}
    = PatchBaseline {tags = Prelude.pure newValue, ..}