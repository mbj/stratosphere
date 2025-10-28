module Stratosphere.DLM.LifecyclePolicy.ScheduleProperty (
        module Exports, ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ArchiveRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CreateRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.DeprecateRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.FastRestoreRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.RetainRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ShareRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-archiverule>
                      archiveRule :: (Prelude.Maybe ArchiveRuleProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-copytags>
                      copyTags :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-createrule>
                      createRule :: (Prelude.Maybe CreateRuleProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-crossregioncopyrules>
                      crossRegionCopyRules :: (Prelude.Maybe [CrossRegionCopyRuleProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-deprecaterule>
                      deprecateRule :: (Prelude.Maybe DeprecateRuleProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-fastrestorerule>
                      fastRestoreRule :: (Prelude.Maybe FastRestoreRuleProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-retainrule>
                      retainRule :: (Prelude.Maybe RetainRuleProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-sharerules>
                      shareRules :: (Prelude.Maybe [ShareRuleProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-tagstoadd>
                      tagsToAdd :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-variabletags>
                      variableTags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {haddock_workaround_ = (), archiveRule = Prelude.Nothing,
       copyTags = Prelude.Nothing, createRule = Prelude.Nothing,
       crossRegionCopyRules = Prelude.Nothing,
       deprecateRule = Prelude.Nothing, fastRestoreRule = Prelude.Nothing,
       name = Prelude.Nothing, retainRule = Prelude.Nothing,
       shareRules = Prelude.Nothing, tagsToAdd = Prelude.Nothing,
       variableTags = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveRule" Prelude.<$> archiveRule,
                            (JSON..=) "CopyTags" Prelude.<$> copyTags,
                            (JSON..=) "CreateRule" Prelude.<$> createRule,
                            (JSON..=) "CrossRegionCopyRules" Prelude.<$> crossRegionCopyRules,
                            (JSON..=) "DeprecateRule" Prelude.<$> deprecateRule,
                            (JSON..=) "FastRestoreRule" Prelude.<$> fastRestoreRule,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RetainRule" Prelude.<$> retainRule,
                            (JSON..=) "ShareRules" Prelude.<$> shareRules,
                            (JSON..=) "TagsToAdd" Prelude.<$> tagsToAdd,
                            (JSON..=) "VariableTags" Prelude.<$> variableTags])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveRule" Prelude.<$> archiveRule,
               (JSON..=) "CopyTags" Prelude.<$> copyTags,
               (JSON..=) "CreateRule" Prelude.<$> createRule,
               (JSON..=) "CrossRegionCopyRules" Prelude.<$> crossRegionCopyRules,
               (JSON..=) "DeprecateRule" Prelude.<$> deprecateRule,
               (JSON..=) "FastRestoreRule" Prelude.<$> fastRestoreRule,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RetainRule" Prelude.<$> retainRule,
               (JSON..=) "ShareRules" Prelude.<$> shareRules,
               (JSON..=) "TagsToAdd" Prelude.<$> tagsToAdd,
               (JSON..=) "VariableTags" Prelude.<$> variableTags]))
instance Property "ArchiveRule" ScheduleProperty where
  type PropertyType "ArchiveRule" ScheduleProperty = ArchiveRuleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {archiveRule = Prelude.pure newValue, ..}
instance Property "CopyTags" ScheduleProperty where
  type PropertyType "CopyTags" ScheduleProperty = Value Prelude.Bool
  set newValue ScheduleProperty {..}
    = ScheduleProperty {copyTags = Prelude.pure newValue, ..}
instance Property "CreateRule" ScheduleProperty where
  type PropertyType "CreateRule" ScheduleProperty = CreateRuleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {createRule = Prelude.pure newValue, ..}
instance Property "CrossRegionCopyRules" ScheduleProperty where
  type PropertyType "CrossRegionCopyRules" ScheduleProperty = [CrossRegionCopyRuleProperty]
  set newValue ScheduleProperty {..}
    = ScheduleProperty
        {crossRegionCopyRules = Prelude.pure newValue, ..}
instance Property "DeprecateRule" ScheduleProperty where
  type PropertyType "DeprecateRule" ScheduleProperty = DeprecateRuleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {deprecateRule = Prelude.pure newValue, ..}
instance Property "FastRestoreRule" ScheduleProperty where
  type PropertyType "FastRestoreRule" ScheduleProperty = FastRestoreRuleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {fastRestoreRule = Prelude.pure newValue, ..}
instance Property "Name" ScheduleProperty where
  type PropertyType "Name" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {name = Prelude.pure newValue, ..}
instance Property "RetainRule" ScheduleProperty where
  type PropertyType "RetainRule" ScheduleProperty = RetainRuleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {retainRule = Prelude.pure newValue, ..}
instance Property "ShareRules" ScheduleProperty where
  type PropertyType "ShareRules" ScheduleProperty = [ShareRuleProperty]
  set newValue ScheduleProperty {..}
    = ScheduleProperty {shareRules = Prelude.pure newValue, ..}
instance Property "TagsToAdd" ScheduleProperty where
  type PropertyType "TagsToAdd" ScheduleProperty = [Tag]
  set newValue ScheduleProperty {..}
    = ScheduleProperty {tagsToAdd = Prelude.pure newValue, ..}
instance Property "VariableTags" ScheduleProperty where
  type PropertyType "VariableTags" ScheduleProperty = [Tag]
  set newValue ScheduleProperty {..}
    = ScheduleProperty {variableTags = Prelude.pure newValue, ..}