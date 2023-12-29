module Stratosphere.QuickSight.Template.DataSetConfigurationProperty (
        module Exports, DataSetConfigurationProperty(..),
        mkDataSetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnGroupSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataSetSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetConfigurationProperty
  = DataSetConfigurationProperty {columnGroupSchemaList :: (Prelude.Maybe [ColumnGroupSchemaProperty]),
                                  dataSetSchema :: (Prelude.Maybe DataSetSchemaProperty),
                                  placeholder :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetConfigurationProperty :: DataSetConfigurationProperty
mkDataSetConfigurationProperty
  = DataSetConfigurationProperty
      {columnGroupSchemaList = Prelude.Nothing,
       dataSetSchema = Prelude.Nothing, placeholder = Prelude.Nothing}
instance ToResourceProperties DataSetConfigurationProperty where
  toResourceProperties DataSetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataSetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnGroupSchemaList"
                              Prelude.<$> columnGroupSchemaList,
                            (JSON..=) "DataSetSchema" Prelude.<$> dataSetSchema,
                            (JSON..=) "Placeholder" Prelude.<$> placeholder])}
instance JSON.ToJSON DataSetConfigurationProperty where
  toJSON DataSetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnGroupSchemaList"
                 Prelude.<$> columnGroupSchemaList,
               (JSON..=) "DataSetSchema" Prelude.<$> dataSetSchema,
               (JSON..=) "Placeholder" Prelude.<$> placeholder]))
instance Property "ColumnGroupSchemaList" DataSetConfigurationProperty where
  type PropertyType "ColumnGroupSchemaList" DataSetConfigurationProperty = [ColumnGroupSchemaProperty]
  set newValue DataSetConfigurationProperty {..}
    = DataSetConfigurationProperty
        {columnGroupSchemaList = Prelude.pure newValue, ..}
instance Property "DataSetSchema" DataSetConfigurationProperty where
  type PropertyType "DataSetSchema" DataSetConfigurationProperty = DataSetSchemaProperty
  set newValue DataSetConfigurationProperty {..}
    = DataSetConfigurationProperty
        {dataSetSchema = Prelude.pure newValue, ..}
instance Property "Placeholder" DataSetConfigurationProperty where
  type PropertyType "Placeholder" DataSetConfigurationProperty = Value Prelude.Text
  set newValue DataSetConfigurationProperty {..}
    = DataSetConfigurationProperty
        {placeholder = Prelude.pure newValue, ..}