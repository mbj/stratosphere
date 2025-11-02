module Stratosphere.KinesisAnalyticsV2.Application.CSVMappingParametersProperty (
        CSVMappingParametersProperty(..), mkCSVMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CSVMappingParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html>
    CSVMappingParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordcolumndelimiter>
                                  recordColumnDelimiter :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordrowdelimiter>
                                  recordRowDelimiter :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCSVMappingParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CSVMappingParametersProperty
mkCSVMappingParametersProperty
  recordColumnDelimiter
  recordRowDelimiter
  = CSVMappingParametersProperty
      {haddock_workaround_ = (),
       recordColumnDelimiter = recordColumnDelimiter,
       recordRowDelimiter = recordRowDelimiter}
instance ToResourceProperties CSVMappingParametersProperty where
  toResourceProperties CSVMappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CSVMappingParameters",
         supportsTags = Prelude.False,
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