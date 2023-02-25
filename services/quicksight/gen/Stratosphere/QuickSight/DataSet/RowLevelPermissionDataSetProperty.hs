module Stratosphere.QuickSight.DataSet.RowLevelPermissionDataSetProperty (
        RowLevelPermissionDataSetProperty(..),
        mkRowLevelPermissionDataSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowLevelPermissionDataSetProperty
  = RowLevelPermissionDataSetProperty {arn :: (Value Prelude.Text),
                                       formatVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                       namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                       permissionPolicy :: (Value Prelude.Text)}
mkRowLevelPermissionDataSetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RowLevelPermissionDataSetProperty
mkRowLevelPermissionDataSetProperty arn permissionPolicy
  = RowLevelPermissionDataSetProperty
      {arn = arn, permissionPolicy = permissionPolicy,
       formatVersion = Prelude.Nothing, namespace = Prelude.Nothing}
instance ToResourceProperties RowLevelPermissionDataSetProperty where
  toResourceProperties RowLevelPermissionDataSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RowLevelPermissionDataSet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "PermissionPolicy" JSON..= permissionPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatVersion" Prelude.<$> formatVersion,
                               (JSON..=) "Namespace" Prelude.<$> namespace]))}
instance JSON.ToJSON RowLevelPermissionDataSetProperty where
  toJSON RowLevelPermissionDataSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "PermissionPolicy" JSON..= permissionPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "FormatVersion" Prelude.<$> formatVersion,
                  (JSON..=) "Namespace" Prelude.<$> namespace])))
instance Property "Arn" RowLevelPermissionDataSetProperty where
  type PropertyType "Arn" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty {arn = newValue, ..}
instance Property "FormatVersion" RowLevelPermissionDataSetProperty where
  type PropertyType "FormatVersion" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {formatVersion = Prelude.pure newValue, ..}
instance Property "Namespace" RowLevelPermissionDataSetProperty where
  type PropertyType "Namespace" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "PermissionPolicy" RowLevelPermissionDataSetProperty where
  type PropertyType "PermissionPolicy" RowLevelPermissionDataSetProperty = Value Prelude.Text
  set newValue RowLevelPermissionDataSetProperty {..}
    = RowLevelPermissionDataSetProperty
        {permissionPolicy = newValue, ..}