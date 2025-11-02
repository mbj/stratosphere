module Stratosphere.Backup.BackupSelection.BackupSelectionResourceTypeProperty (
        module Exports, BackupSelectionResourceTypeProperty(..),
        mkBackupSelectionResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupSelection.ConditionResourceTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.BackupSelection.ConditionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupSelectionResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html>
    BackupSelectionResourceTypeProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-conditions>
                                         conditions :: (Prelude.Maybe ConditionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-iamrolearn>
                                         iamRoleArn :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-listoftags>
                                         listOfTags :: (Prelude.Maybe [ConditionResourceTypeProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-notresources>
                                         notResources :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-resources>
                                         resources :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-selectionname>
                                         selectionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupSelectionResourceTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BackupSelectionResourceTypeProperty
mkBackupSelectionResourceTypeProperty iamRoleArn selectionName
  = BackupSelectionResourceTypeProperty
      {haddock_workaround_ = (), iamRoleArn = iamRoleArn,
       selectionName = selectionName, conditions = Prelude.Nothing,
       listOfTags = Prelude.Nothing, notResources = Prelude.Nothing,
       resources = Prelude.Nothing}
instance ToResourceProperties BackupSelectionResourceTypeProperty where
  toResourceProperties BackupSelectionResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.BackupSelectionResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IamRoleArn" JSON..= iamRoleArn,
                            "SelectionName" JSON..= selectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "Conditions" Prelude.<$> conditions,
                               (JSON..=) "ListOfTags" Prelude.<$> listOfTags,
                               (JSON..=) "NotResources" Prelude.<$> notResources,
                               (JSON..=) "Resources" Prelude.<$> resources]))}
instance JSON.ToJSON BackupSelectionResourceTypeProperty where
  toJSON BackupSelectionResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IamRoleArn" JSON..= iamRoleArn,
               "SelectionName" JSON..= selectionName]
              (Prelude.catMaybes
                 [(JSON..=) "Conditions" Prelude.<$> conditions,
                  (JSON..=) "ListOfTags" Prelude.<$> listOfTags,
                  (JSON..=) "NotResources" Prelude.<$> notResources,
                  (JSON..=) "Resources" Prelude.<$> resources])))
instance Property "Conditions" BackupSelectionResourceTypeProperty where
  type PropertyType "Conditions" BackupSelectionResourceTypeProperty = ConditionsProperty
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {conditions = Prelude.pure newValue, ..}
instance Property "IamRoleArn" BackupSelectionResourceTypeProperty where
  type PropertyType "IamRoleArn" BackupSelectionResourceTypeProperty = Value Prelude.Text
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty {iamRoleArn = newValue, ..}
instance Property "ListOfTags" BackupSelectionResourceTypeProperty where
  type PropertyType "ListOfTags" BackupSelectionResourceTypeProperty = [ConditionResourceTypeProperty]
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {listOfTags = Prelude.pure newValue, ..}
instance Property "NotResources" BackupSelectionResourceTypeProperty where
  type PropertyType "NotResources" BackupSelectionResourceTypeProperty = ValueList Prelude.Text
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {notResources = Prelude.pure newValue, ..}
instance Property "Resources" BackupSelectionResourceTypeProperty where
  type PropertyType "Resources" BackupSelectionResourceTypeProperty = ValueList Prelude.Text
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {resources = Prelude.pure newValue, ..}
instance Property "SelectionName" BackupSelectionResourceTypeProperty where
  type PropertyType "SelectionName" BackupSelectionResourceTypeProperty = Value Prelude.Text
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {selectionName = newValue, ..}