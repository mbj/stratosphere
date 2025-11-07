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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetconfiguration.html>
    DataSetConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetconfiguration.html#cfn-quicksight-template-datasetconfiguration-columngroupschemalist>
                                  columnGroupSchemaList :: (Prelude.Maybe [ColumnGroupSchemaProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetconfiguration.html#cfn-quicksight-template-datasetconfiguration-datasetschema>
                                  dataSetSchema :: (Prelude.Maybe DataSetSchemaProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datasetconfiguration.html#cfn-quicksight-template-datasetconfiguration-placeholder>
                                  placeholder :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetConfigurationProperty :: DataSetConfigurationProperty
mkDataSetConfigurationProperty
  = DataSetConfigurationProperty
      {haddock_workaround_ = (), columnGroupSchemaList = Prelude.Nothing,
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