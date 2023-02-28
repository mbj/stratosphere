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
  = VariableProperty {datasetContentVersionValue :: (Prelude.Maybe DatasetContentVersionValueProperty),
                      doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                      outputFileUriValue :: (Prelude.Maybe OutputFileUriValueProperty),
                      stringValue :: (Prelude.Maybe (Value Prelude.Text)),
                      variableName :: (Value Prelude.Text)}
mkVariableProperty :: Value Prelude.Text -> VariableProperty
mkVariableProperty variableName
  = VariableProperty
      {variableName = variableName,
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