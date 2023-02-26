module Stratosphere.QuickSight.DataSet.ColumnLevelPermissionRuleProperty (
        ColumnLevelPermissionRuleProperty(..),
        mkColumnLevelPermissionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnLevelPermissionRuleProperty
  = ColumnLevelPermissionRuleProperty {columnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       principals :: (Prelude.Maybe (ValueList Prelude.Text))}
mkColumnLevelPermissionRuleProperty ::
  ColumnLevelPermissionRuleProperty
mkColumnLevelPermissionRuleProperty
  = ColumnLevelPermissionRuleProperty
      {columnNames = Prelude.Nothing, principals = Prelude.Nothing}
instance ToResourceProperties ColumnLevelPermissionRuleProperty where
  toResourceProperties ColumnLevelPermissionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ColumnLevelPermissionRule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
                            (JSON..=) "Principals" Prelude.<$> principals])}
instance JSON.ToJSON ColumnLevelPermissionRuleProperty where
  toJSON ColumnLevelPermissionRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
               (JSON..=) "Principals" Prelude.<$> principals]))
instance Property "ColumnNames" ColumnLevelPermissionRuleProperty where
  type PropertyType "ColumnNames" ColumnLevelPermissionRuleProperty = ValueList Prelude.Text
  set newValue ColumnLevelPermissionRuleProperty {..}
    = ColumnLevelPermissionRuleProperty
        {columnNames = Prelude.pure newValue, ..}
instance Property "Principals" ColumnLevelPermissionRuleProperty where
  type PropertyType "Principals" ColumnLevelPermissionRuleProperty = ValueList Prelude.Text
  set newValue ColumnLevelPermissionRuleProperty {..}
    = ColumnLevelPermissionRuleProperty
        {principals = Prelude.pure newValue, ..}