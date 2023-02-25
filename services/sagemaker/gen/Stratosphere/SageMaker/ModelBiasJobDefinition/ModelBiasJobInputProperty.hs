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
  = ModelBiasJobInputProperty {batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                               endpointInput :: (Prelude.Maybe EndpointInputProperty),
                               groundTruthS3Input :: MonitoringGroundTruthS3InputProperty}
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