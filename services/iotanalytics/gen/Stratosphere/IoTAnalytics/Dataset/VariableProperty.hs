module Stratosphere.IoTAnalytics.Dataset.VariableProperty (
        module Exports, VariableProperty(..), mkVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.DatasetContentVersionValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.OutputFileUriValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html>
    VariableProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue>
                      datasetContentVersionValue :: (Prelude.Maybe DatasetContentVersionValueProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-doublevalue>
                      doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-outputfileurivalue>
                      outputFileUriValue :: (Prelude.Maybe OutputFileUriValueProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-stringvalue>
                      stringValue :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-variablename>
                      variableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariableProperty :: Value Prelude.Text -> VariableProperty
mkVariableProperty variableName
  = VariableProperty
      {haddock_workaround_ = (), variableName = variableName,
       datasetContentVersionValue = Prelude.Nothing,
       doubleValue = Prelude.Nothing,
       outputFileUriValue = Prelude.Nothing,
       stringValue = Prelude.Nothing}
instance ToResourceProperties VariableProperty where
  toResourceProperties VariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Variable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VariableName" JSON..= variableName]
                           (Prelude.catMaybes
                              [(JSON..=) "DatasetContentVersionValue"
                                 Prelude.<$> datasetContentVersionValue,
                               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                               (JSON..=) "OutputFileUriValue" Prelude.<$> outputFileUriValue,
                               (JSON..=) "StringValue" Prelude.<$> stringValue]))}
instance JSON.ToJSON VariableProperty where
  toJSON VariableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VariableName" JSON..= variableName]
              (Prelude.catMaybes
                 [(JSON..=) "DatasetContentVersionValue"
                    Prelude.<$> datasetContentVersionValue,
                  (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                  (JSON..=) "OutputFileUriValue" Prelude.<$> outputFileUriValue,
                  (JSON..=) "StringValue" Prelude.<$> stringValue])))
instance Property "DatasetContentVersionValue" VariableProperty where
  type PropertyType "DatasetContentVersionValue" VariableProperty = DatasetContentVersionValueProperty
  set newValue VariableProperty {..}
    = VariableProperty
        {datasetContentVersionValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" VariableProperty where
  type PropertyType "DoubleValue" VariableProperty = Value Prelude.Double
  set newValue VariableProperty {..}
    = VariableProperty {doubleValue = Prelude.pure newValue, ..}
instance Property "OutputFileUriValue" VariableProperty where
  type PropertyType "OutputFileUriValue" VariableProperty = OutputFileUriValueProperty
  set newValue VariableProperty {..}
    = VariableProperty {outputFileUriValue = Prelude.pure newValue, ..}
instance Property "StringValue" VariableProperty where
  type PropertyType "StringValue" VariableProperty = Value Prelude.Text
  set newValue VariableProperty {..}
    = VariableProperty {stringValue = Prelude.pure newValue, ..}
instance Property "VariableName" VariableProperty where
  type PropertyType "VariableName" VariableProperty = Value Prelude.Text
  set newValue VariableProperty {..}
    = VariableProperty {variableName = newValue, ..}