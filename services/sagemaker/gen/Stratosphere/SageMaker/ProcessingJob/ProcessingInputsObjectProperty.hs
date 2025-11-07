module Stratosphere.SageMaker.ProcessingJob.ProcessingInputsObjectProperty (
        module Exports, ProcessingInputsObjectProperty(..),
        mkProcessingInputsObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.DatasetDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.S3InputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessingInputsObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html>
    ProcessingInputsObjectProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-appmanaged>
                                    appManaged :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-datasetdefinition>
                                    datasetDefinition :: (Prelude.Maybe DatasetDefinitionProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-inputname>
                                    inputName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-s3input>
                                    s3Input :: (Prelude.Maybe S3InputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingInputsObjectProperty ::
  Value Prelude.Text -> ProcessingInputsObjectProperty
mkProcessingInputsObjectProperty inputName
  = ProcessingInputsObjectProperty
      {haddock_workaround_ = (), inputName = inputName,
       appManaged = Prelude.Nothing, datasetDefinition = Prelude.Nothing,
       s3Input = Prelude.Nothing}
instance ToResourceProperties ProcessingInputsObjectProperty where
  toResourceProperties ProcessingInputsObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.ProcessingInputsObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputName" JSON..= inputName]
                           (Prelude.catMaybes
                              [(JSON..=) "AppManaged" Prelude.<$> appManaged,
                               (JSON..=) "DatasetDefinition" Prelude.<$> datasetDefinition,
                               (JSON..=) "S3Input" Prelude.<$> s3Input]))}
instance JSON.ToJSON ProcessingInputsObjectProperty where
  toJSON ProcessingInputsObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputName" JSON..= inputName]
              (Prelude.catMaybes
                 [(JSON..=) "AppManaged" Prelude.<$> appManaged,
                  (JSON..=) "DatasetDefinition" Prelude.<$> datasetDefinition,
                  (JSON..=) "S3Input" Prelude.<$> s3Input])))
instance Property "AppManaged" ProcessingInputsObjectProperty where
  type PropertyType "AppManaged" ProcessingInputsObjectProperty = Value Prelude.Bool
  set newValue ProcessingInputsObjectProperty {..}
    = ProcessingInputsObjectProperty
        {appManaged = Prelude.pure newValue, ..}
instance Property "DatasetDefinition" ProcessingInputsObjectProperty where
  type PropertyType "DatasetDefinition" ProcessingInputsObjectProperty = DatasetDefinitionProperty
  set newValue ProcessingInputsObjectProperty {..}
    = ProcessingInputsObjectProperty
        {datasetDefinition = Prelude.pure newValue, ..}
instance Property "InputName" ProcessingInputsObjectProperty where
  type PropertyType "InputName" ProcessingInputsObjectProperty = Value Prelude.Text
  set newValue ProcessingInputsObjectProperty {..}
    = ProcessingInputsObjectProperty {inputName = newValue, ..}
instance Property "S3Input" ProcessingInputsObjectProperty where
  type PropertyType "S3Input" ProcessingInputsObjectProperty = S3InputProperty
  set newValue ProcessingInputsObjectProperty {..}
    = ProcessingInputsObjectProperty
        {s3Input = Prelude.pure newValue, ..}