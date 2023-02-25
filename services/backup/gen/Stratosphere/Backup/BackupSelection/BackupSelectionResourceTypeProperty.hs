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
  = BackupSelectionResourceTypeProperty {conditions :: (Prelude.Maybe ConditionsProperty),
                                         iamRoleArn :: (Value Prelude.Text),
                                         listOfTags :: (Prelude.Maybe [ConditionResourceTypeProperty]),
                                         notResources :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                         resources :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                         selectionName :: (Value Prelude.Text)}
mkBackupSelectionResourceTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BackupSelectionResourceTypeProperty
mkBackupSelectionResourceTypeProperty iamRoleArn selectionName
  = BackupSelectionResourceTypeProperty
      {iamRoleArn = iamRoleArn, selectionName = selectionName,
       conditions = Prelude.Nothing, listOfTags = Prelude.Nothing,
       notResources = Prelude.Nothing, resources = Prelude.Nothing}
instance ToResourceProperties BackupSelectionResourceTypeProperty where
  toResourceProperties BackupSelectionResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.BackupSelectionResourceType",
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
  type PropertyType "NotResources" BackupSelectionResourceTypeProperty = ValueList (Value Prelude.Text)
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {notResources = Prelude.pure newValue, ..}
instance Property "Resources" BackupSelectionResourceTypeProperty where
  type PropertyType "Resources" BackupSelectionResourceTypeProperty = ValueList (Value Prelude.Text)
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {resources = Prelude.pure newValue, ..}
instance Property "SelectionName" BackupSelectionResourceTypeProperty where
  type PropertyType "SelectionName" BackupSelectionResourceTypeProperty = Value Prelude.Text
  set newValue BackupSelectionResourceTypeProperty {..}
    = BackupSelectionResourceTypeProperty
        {selectionName = newValue, ..}