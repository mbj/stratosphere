module Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasJobInputProperty (
        module Exports, ModelBiasJobInputProperty(..),
        mkModelBiasJobInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.BatchTransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.EndpointInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.MonitoringGroundTruthS3InputProperty as Exports
import Stratosphere.ResourceProperties
data ModelBiasJobInputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html>
    ModelBiasJobInputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-batchtransforminput>
                               batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-endpointinput>
                               endpointInput :: (Prelude.Maybe EndpointInputProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-groundtruths3input>
                               groundTruthS3Input :: MonitoringGroundTruthS3InputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelBiasJobInputProperty ::
  MonitoringGroundTruthS3InputProperty -> ModelBiasJobInputProperty
mkModelBiasJobInputProperty groundTruthS3Input
  = ModelBiasJobInputProperty
      {groundTruthS3Input = groundTruthS3Input,
       batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties ModelBiasJobInputProperty where
  toResourceProperties ModelBiasJobInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.ModelBiasJobInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroundTruthS3Input" JSON..= groundTruthS3Input]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                               (JSON..=) "EndpointInput" Prelude.<$> endpointInput]))}
instance JSON.ToJSON ModelBiasJobInputProperty where
  toJSON ModelBiasJobInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroundTruthS3Input" JSON..= groundTruthS3Input]
              (Prelude.catMaybes
                 [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                  (JSON..=) "EndpointInput" Prelude.<$> endpointInput])))
instance Property "BatchTransformInput" ModelBiasJobInputProperty where
  type PropertyType "BatchTransformInput" ModelBiasJobInputProperty = BatchTransformInputProperty
  set newValue ModelBiasJobInputProperty {..}
    = ModelBiasJobInputProperty
        {batchTransformInput = Prelude.pure newValue, ..}
instance Property "EndpointInput" ModelBiasJobInputProperty where
  type PropertyType "EndpointInput" ModelBiasJobInputProperty = EndpointInputProperty
  set newValue ModelBiasJobInputProperty {..}
    = ModelBiasJobInputProperty
        {endpointInput = Prelude.pure newValue, ..}
instance Property "GroundTruthS3Input" ModelBiasJobInputProperty where
  type PropertyType "GroundTruthS3Input" ModelBiasJobInputProperty = MonitoringGroundTruthS3InputProperty
  set newValue ModelBiasJobInputProperty {..}
    = ModelBiasJobInputProperty {groundTruthS3Input = newValue, ..}