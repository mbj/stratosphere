module Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityJobInputProperty (
        module Exports, ModelQualityJobInputProperty(..),
        mkModelQualityJobInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.BatchTransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.EndpointInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelQualityJobDefinition.MonitoringGroundTruthS3InputProperty as Exports
import Stratosphere.ResourceProperties
data ModelQualityJobInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html>
    ModelQualityJobInputProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput-batchtransforminput>
                                  batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput-endpointinput>
                                  endpointInput :: (Prelude.Maybe EndpointInputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput-groundtruths3input>
                                  groundTruthS3Input :: MonitoringGroundTruthS3InputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelQualityJobInputProperty ::
  MonitoringGroundTruthS3InputProperty
  -> ModelQualityJobInputProperty
mkModelQualityJobInputProperty groundTruthS3Input
  = ModelQualityJobInputProperty
      {haddock_workaround_ = (), groundTruthS3Input = groundTruthS3Input,
       batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties ModelQualityJobInputProperty where
  toResourceProperties ModelQualityJobInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.ModelQualityJobInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroundTruthS3Input" JSON..= groundTruthS3Input]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                               (JSON..=) "EndpointInput" Prelude.<$> endpointInput]))}
instance JSON.ToJSON ModelQualityJobInputProperty where
  toJSON ModelQualityJobInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroundTruthS3Input" JSON..= groundTruthS3Input]
              (Prelude.catMaybes
                 [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                  (JSON..=) "EndpointInput" Prelude.<$> endpointInput])))
instance Property "BatchTransformInput" ModelQualityJobInputProperty where
  type PropertyType "BatchTransformInput" ModelQualityJobInputProperty = BatchTransformInputProperty
  set newValue ModelQualityJobInputProperty {..}
    = ModelQualityJobInputProperty
        {batchTransformInput = Prelude.pure newValue, ..}
instance Property "EndpointInput" ModelQualityJobInputProperty where
  type PropertyType "EndpointInput" ModelQualityJobInputProperty = EndpointInputProperty
  set newValue ModelQualityJobInputProperty {..}
    = ModelQualityJobInputProperty
        {endpointInput = Prelude.pure newValue, ..}
instance Property "GroundTruthS3Input" ModelQualityJobInputProperty where
  type PropertyType "GroundTruthS3Input" ModelQualityJobInputProperty = MonitoringGroundTruthS3InputProperty
  set newValue ModelQualityJobInputProperty {..}
    = ModelQualityJobInputProperty {groundTruthS3Input = newValue, ..}