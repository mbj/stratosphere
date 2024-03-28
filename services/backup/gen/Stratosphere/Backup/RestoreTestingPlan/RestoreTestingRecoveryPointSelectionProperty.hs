module Stratosphere.Backup.RestoreTestingPlan.RestoreTestingRecoveryPointSelectionProperty (
        RestoreTestingRecoveryPointSelectionProperty(..),
        mkRestoreTestingRecoveryPointSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RestoreTestingRecoveryPointSelectionProperty
  = RestoreTestingRecoveryPointSelectionProperty {algorithm :: (Value Prelude.Text),
                                                  excludeVaults :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  includeVaults :: (ValueList Prelude.Text),
                                                  recoveryPointTypes :: (ValueList Prelude.Text),
                                                  selectionWindowDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestoreTestingRecoveryPointSelectionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text
        -> RestoreTestingRecoveryPointSelectionProperty
mkRestoreTestingRecoveryPointSelectionProperty
  algorithm
  includeVaults
  recoveryPointTypes
  = RestoreTestingRecoveryPointSelectionProperty
      {algorithm = algorithm, includeVaults = includeVaults,
       recoveryPointTypes = recoveryPointTypes,
       excludeVaults = Prelude.Nothing,
       selectionWindowDays = Prelude.Nothing}
instance ToResourceProperties RestoreTestingRecoveryPointSelectionProperty where
  toResourceProperties
    RestoreTestingRecoveryPointSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingPlan.RestoreTestingRecoveryPointSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Algorithm" JSON..= algorithm,
                            "IncludeVaults" JSON..= includeVaults,
                            "RecoveryPointTypes" JSON..= recoveryPointTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeVaults" Prelude.<$> excludeVaults,
                               (JSON..=) "SelectionWindowDays" Prelude.<$> selectionWindowDays]))}
instance JSON.ToJSON RestoreTestingRecoveryPointSelectionProperty where
  toJSON RestoreTestingRecoveryPointSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Algorithm" JSON..= algorithm,
               "IncludeVaults" JSON..= includeVaults,
               "RecoveryPointTypes" JSON..= recoveryPointTypes]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeVaults" Prelude.<$> excludeVaults,
                  (JSON..=) "SelectionWindowDays" Prelude.<$> selectionWindowDays])))
instance Property "Algorithm" RestoreTestingRecoveryPointSelectionProperty where
  type PropertyType "Algorithm" RestoreTestingRecoveryPointSelectionProperty = Value Prelude.Text
  set newValue RestoreTestingRecoveryPointSelectionProperty {..}
    = RestoreTestingRecoveryPointSelectionProperty
        {algorithm = newValue, ..}
instance Property "ExcludeVaults" RestoreTestingRecoveryPointSelectionProperty where
  type PropertyType "ExcludeVaults" RestoreTestingRecoveryPointSelectionProperty = ValueList Prelude.Text
  set newValue RestoreTestingRecoveryPointSelectionProperty {..}
    = RestoreTestingRecoveryPointSelectionProperty
        {excludeVaults = Prelude.pure newValue, ..}
instance Property "IncludeVaults" RestoreTestingRecoveryPointSelectionProperty where
  type PropertyType "IncludeVaults" RestoreTestingRecoveryPointSelectionProperty = ValueList Prelude.Text
  set newValue RestoreTestingRecoveryPointSelectionProperty {..}
    = RestoreTestingRecoveryPointSelectionProperty
        {includeVaults = newValue, ..}
instance Property "RecoveryPointTypes" RestoreTestingRecoveryPointSelectionProperty where
  type PropertyType "RecoveryPointTypes" RestoreTestingRecoveryPointSelectionProperty = ValueList Prelude.Text
  set newValue RestoreTestingRecoveryPointSelectionProperty {..}
    = RestoreTestingRecoveryPointSelectionProperty
        {recoveryPointTypes = newValue, ..}
instance Property "SelectionWindowDays" RestoreTestingRecoveryPointSelectionProperty where
  type PropertyType "SelectionWindowDays" RestoreTestingRecoveryPointSelectionProperty = Value Prelude.Integer
  set newValue RestoreTestingRecoveryPointSelectionProperty {..}
    = RestoreTestingRecoveryPointSelectionProperty
        {selectionWindowDays = Prelude.pure newValue, ..}