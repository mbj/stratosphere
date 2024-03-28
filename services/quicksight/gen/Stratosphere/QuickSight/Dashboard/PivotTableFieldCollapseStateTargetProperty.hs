module Stratosphere.QuickSight.Dashboard.PivotTableFieldCollapseStateTargetProperty (
        module Exports, PivotTableFieldCollapseStateTargetProperty(..),
        mkPivotTableFieldCollapseStateTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPathValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldCollapseStateTargetProperty
  = PivotTableFieldCollapseStateTargetProperty {fieldDataPathValues :: (Prelude.Maybe [DataPathValueProperty]),
                                                fieldId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldCollapseStateTargetProperty ::
  PivotTableFieldCollapseStateTargetProperty
mkPivotTableFieldCollapseStateTargetProperty
  = PivotTableFieldCollapseStateTargetProperty
      {fieldDataPathValues = Prelude.Nothing, fieldId = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldCollapseStateTargetProperty where
  toResourceProperties
    PivotTableFieldCollapseStateTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableFieldCollapseStateTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldDataPathValues" Prelude.<$> fieldDataPathValues,
                            (JSON..=) "FieldId" Prelude.<$> fieldId])}
instance JSON.ToJSON PivotTableFieldCollapseStateTargetProperty where
  toJSON PivotTableFieldCollapseStateTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldDataPathValues" Prelude.<$> fieldDataPathValues,
               (JSON..=) "FieldId" Prelude.<$> fieldId]))
instance Property "FieldDataPathValues" PivotTableFieldCollapseStateTargetProperty where
  type PropertyType "FieldDataPathValues" PivotTableFieldCollapseStateTargetProperty = [DataPathValueProperty]
  set newValue PivotTableFieldCollapseStateTargetProperty {..}
    = PivotTableFieldCollapseStateTargetProperty
        {fieldDataPathValues = Prelude.pure newValue, ..}
instance Property "FieldId" PivotTableFieldCollapseStateTargetProperty where
  type PropertyType "FieldId" PivotTableFieldCollapseStateTargetProperty = Value Prelude.Text
  set newValue PivotTableFieldCollapseStateTargetProperty {..}
    = PivotTableFieldCollapseStateTargetProperty
        {fieldId = Prelude.pure newValue, ..}