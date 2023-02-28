module Stratosphere.QuickSight.Template.ColumnGroupSchemaProperty (
        module Exports, ColumnGroupSchemaProperty(..),
        mkColumnGroupSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnGroupColumnSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnGroupSchemaProperty
  = ColumnGroupSchemaProperty {columnGroupColumnSchemaList :: (Prelude.Maybe [ColumnGroupColumnSchemaProperty]),
                               name :: (Prelude.Maybe (Value Prelude.Text))}
mkColumnGroupSchemaProperty :: ColumnGroupSchemaProperty
mkColumnGroupSchemaProperty
  = ColumnGroupSchemaProperty
      {columnGroupColumnSchemaList = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ColumnGroupSchemaProperty where
  toResourceProperties ColumnGroupSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnGroupSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnGroupColumnSchemaList"
                              Prelude.<$> columnGroupColumnSchemaList,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ColumnGroupSchemaProperty where
  toJSON ColumnGroupSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnGroupColumnSchemaList"
                 Prelude.<$> columnGroupColumnSchemaList,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "ColumnGroupColumnSchemaList" ColumnGroupSchemaProperty where
  type PropertyType "ColumnGroupColumnSchemaList" ColumnGroupSchemaProperty = [ColumnGroupColumnSchemaProperty]
  set newValue ColumnGroupSchemaProperty {..}
    = ColumnGroupSchemaProperty
        {columnGroupColumnSchemaList = Prelude.pure newValue, ..}
instance Property "Name" ColumnGroupSchemaProperty where
  type PropertyType "Name" ColumnGroupSchemaProperty = Value Prelude.Text
  set newValue ColumnGroupSchemaProperty {..}
    = ColumnGroupSchemaProperty {name = Prelude.pure newValue, ..}