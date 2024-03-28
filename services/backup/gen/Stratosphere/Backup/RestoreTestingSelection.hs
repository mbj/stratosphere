module Stratosphere.Backup.RestoreTestingSelection (
        module Exports, RestoreTestingSelection(..),
        mkRestoreTestingSelection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.RestoreTestingSelection.ProtectedResourceConditionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RestoreTestingSelection
  = RestoreTestingSelection {iamRoleArn :: (Value Prelude.Text),
                             protectedResourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                             protectedResourceConditions :: (Prelude.Maybe ProtectedResourceConditionsProperty),
                             protectedResourceType :: (Value Prelude.Text),
                             restoreMetadataOverrides :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                             restoreTestingPlanName :: (Value Prelude.Text),
                             restoreTestingSelectionName :: (Value Prelude.Text),
                             validationWindowHours :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestoreTestingSelection ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> RestoreTestingSelection
mkRestoreTestingSelection
  iamRoleArn
  protectedResourceType
  restoreTestingPlanName
  restoreTestingSelectionName
  = RestoreTestingSelection
      {iamRoleArn = iamRoleArn,
       protectedResourceType = protectedResourceType,
       restoreTestingPlanName = restoreTestingPlanName,
       restoreTestingSelectionName = restoreTestingSelectionName,
       protectedResourceArns = Prelude.Nothing,
       protectedResourceConditions = Prelude.Nothing,
       restoreMetadataOverrides = Prelude.Nothing,
       validationWindowHours = Prelude.Nothing}
instance ToResourceProperties RestoreTestingSelection where
  toResourceProperties RestoreTestingSelection {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IamRoleArn" JSON..= iamRoleArn,
                            "ProtectedResourceType" JSON..= protectedResourceType,
                            "RestoreTestingPlanName" JSON..= restoreTestingPlanName,
                            "RestoreTestingSelectionName" JSON..= restoreTestingSelectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ProtectedResourceArns"
                                 Prelude.<$> protectedResourceArns,
                               (JSON..=) "ProtectedResourceConditions"
                                 Prelude.<$> protectedResourceConditions,
                               (JSON..=) "RestoreMetadataOverrides"
                                 Prelude.<$> restoreMetadataOverrides,
                               (JSON..=) "ValidationWindowHours"
                                 Prelude.<$> validationWindowHours]))}
instance JSON.ToJSON RestoreTestingSelection where
  toJSON RestoreTestingSelection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IamRoleArn" JSON..= iamRoleArn,
               "ProtectedResourceType" JSON..= protectedResourceType,
               "RestoreTestingPlanName" JSON..= restoreTestingPlanName,
               "RestoreTestingSelectionName" JSON..= restoreTestingSelectionName]
              (Prelude.catMaybes
                 [(JSON..=) "ProtectedResourceArns"
                    Prelude.<$> protectedResourceArns,
                  (JSON..=) "ProtectedResourceConditions"
                    Prelude.<$> protectedResourceConditions,
                  (JSON..=) "RestoreMetadataOverrides"
                    Prelude.<$> restoreMetadataOverrides,
                  (JSON..=) "ValidationWindowHours"
                    Prelude.<$> validationWindowHours])))
instance Property "IamRoleArn" RestoreTestingSelection where
  type PropertyType "IamRoleArn" RestoreTestingSelection = Value Prelude.Text
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection {iamRoleArn = newValue, ..}
instance Property "ProtectedResourceArns" RestoreTestingSelection where
  type PropertyType "ProtectedResourceArns" RestoreTestingSelection = ValueList Prelude.Text
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection
        {protectedResourceArns = Prelude.pure newValue, ..}
instance Property "ProtectedResourceConditions" RestoreTestingSelection where
  type PropertyType "ProtectedResourceConditions" RestoreTestingSelection = ProtectedResourceConditionsProperty
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection
        {protectedResourceConditions = Prelude.pure newValue, ..}
instance Property "ProtectedResourceType" RestoreTestingSelection where
  type PropertyType "ProtectedResourceType" RestoreTestingSelection = Value Prelude.Text
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection {protectedResourceType = newValue, ..}
instance Property "RestoreMetadataOverrides" RestoreTestingSelection where
  type PropertyType "RestoreMetadataOverrides" RestoreTestingSelection = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection
        {restoreMetadataOverrides = Prelude.pure newValue, ..}
instance Property "RestoreTestingPlanName" RestoreTestingSelection where
  type PropertyType "RestoreTestingPlanName" RestoreTestingSelection = Value Prelude.Text
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection {restoreTestingPlanName = newValue, ..}
instance Property "RestoreTestingSelectionName" RestoreTestingSelection where
  type PropertyType "RestoreTestingSelectionName" RestoreTestingSelection = Value Prelude.Text
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection
        {restoreTestingSelectionName = newValue, ..}
instance Property "ValidationWindowHours" RestoreTestingSelection where
  type PropertyType "ValidationWindowHours" RestoreTestingSelection = Value Prelude.Integer
  set newValue RestoreTestingSelection {..}
    = RestoreTestingSelection
        {validationWindowHours = Prelude.pure newValue, ..}