module Stratosphere.Backup.BackupSelection.ConditionsProperty (
        module Exports, ConditionsProperty(..), mkConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupSelection.ConditionParameterProperty as Exports
import Stratosphere.ResourceProperties
data ConditionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditions.html>
    ConditionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditions.html#cfn-backup-backupselection-conditions-stringequals>
                        stringEquals :: (Prelude.Maybe [ConditionParameterProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditions.html#cfn-backup-backupselection-conditions-stringlike>
                        stringLike :: (Prelude.Maybe [ConditionParameterProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditions.html#cfn-backup-backupselection-conditions-stringnotequals>
                        stringNotEquals :: (Prelude.Maybe [ConditionParameterProperty]),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditions.html#cfn-backup-backupselection-conditions-stringnotlike>
                        stringNotLike :: (Prelude.Maybe [ConditionParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionsProperty :: ConditionsProperty
mkConditionsProperty
  = ConditionsProperty
      {stringEquals = Prelude.Nothing, stringLike = Prelude.Nothing,
       stringNotEquals = Prelude.Nothing, stringNotLike = Prelude.Nothing}
instance ToResourceProperties ConditionsProperty where
  toResourceProperties ConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.Conditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
                            (JSON..=) "StringLike" Prelude.<$> stringLike,
                            (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals,
                            (JSON..=) "StringNotLike" Prelude.<$> stringNotLike])}
instance JSON.ToJSON ConditionsProperty where
  toJSON ConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringEquals" Prelude.<$> stringEquals,
               (JSON..=) "StringLike" Prelude.<$> stringLike,
               (JSON..=) "StringNotEquals" Prelude.<$> stringNotEquals,
               (JSON..=) "StringNotLike" Prelude.<$> stringNotLike]))
instance Property "StringEquals" ConditionsProperty where
  type PropertyType "StringEquals" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringEquals = Prelude.pure newValue, ..}
instance Property "StringLike" ConditionsProperty where
  type PropertyType "StringLike" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringLike = Prelude.pure newValue, ..}
instance Property "StringNotEquals" ConditionsProperty where
  type PropertyType "StringNotEquals" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringNotEquals = Prelude.pure newValue, ..}
instance Property "StringNotLike" ConditionsProperty where
  type PropertyType "StringNotLike" ConditionsProperty = [ConditionParameterProperty]
  set newValue ConditionsProperty {..}
    = ConditionsProperty {stringNotLike = Prelude.pure newValue, ..}