module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.CSVMappingParametersProperty (
        CSVMappingParametersProperty(..), mkCSVMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CSVMappingParametersProperty
  = CSVMappingParametersProperty {recordColumnDelimiter :: (Value Prelude.Text),
                                  recordRowDelimiter :: (Value Prelude.Text)}
mkCSVMappingParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CSVMappingParametersProperty
mkCSVMappingParametersProperty
  recordColumnDelimiter
  recordRowDelimiter
  = CSVMappingParametersProperty
      {recordColumnDelimiter = recordColumnDelimiter,
       recordRowDelimiter = recordRowDelimiter}
instance ToResourceProperties CSVMappingParametersProperty where
  toResourceProperties CSVMappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.CSVMappingParameters",
         properties = ["RecordColumnDelimiter"
                         JSON..= recordColumnDelimiter,
                       "RecordRowDelimiter" JSON..= recordRowDelimiter]}
instance JSON.ToJSON CSVMappingParametersProperty where
  toJSON CSVMappingParametersProperty {..}
    = JSON.object
        ["RecordColumnDelimiter" JSON..= recordColumnDelimiter,
         "RecordRowDelimiter" JSON..= recordRowDelimiter]
instance Property "RecordColumnDelimiter" CSVMappingParametersProperty where
  type PropertyType "RecordColumnDelimiter" CSVMappingParametersProperty = Value Prelude.Text
  set newValue CSVMappingParametersProperty {..}
    = CSVMappingParametersProperty
        {recordColumnDelimiter = newValue, ..}
instance Property "RecordRowDelimiter" CSVMappingParametersProperty where
  type PropertyType "RecordRowDelimiter" CSVMappingParametersProperty = Value Prelude.Text
  set newValue CSVMappingParametersProperty {..}
    = CSVMappingParametersProperty {recordRowDelimiter = newValue, ..}