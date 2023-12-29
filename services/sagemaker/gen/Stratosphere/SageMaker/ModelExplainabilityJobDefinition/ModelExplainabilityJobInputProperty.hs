module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityJobInputProperty (
        module Exports, ModelExplainabilityJobInputProperty(..),
        mkModelExplainabilityJobInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.BatchTransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.EndpointInputProperty as Exports
import Stratosphere.ResourceProperties
data ModelExplainabilityJobInputProperty
  = ModelExplainabilityJobInputProperty {batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                                         endpointInput :: (Prelude.Maybe EndpointInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelExplainabilityJobInputProperty ::
  ModelExplainabilityJobInputProperty
mkModelExplainabilityJobInputProperty
  = ModelExplainabilityJobInputProperty
      {batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties ModelExplainabilityJobInputProperty where
  toResourceProperties ModelExplainabilityJobInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.ModelExplainabilityJobInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                            (JSON..=) "EndpointInput" Prelude.<$> endpointInput])}
instance JSON.ToJSON ModelExplainabilityJobInputProperty where
  toJSON ModelExplainabilityJobInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
               (JSON..=) "EndpointInput" Prelude.<$> endpointInput]))
instance Property "BatchTransformInput" ModelExplainabilityJobInputProperty where
  type PropertyType "BatchTransformInput" ModelExplainabilityJobInputProperty = BatchTransformInputProperty
  set newValue ModelExplainabilityJobInputProperty {..}
    = ModelExplainabilityJobInputProperty
        {batchTransformInput = Prelude.pure newValue, ..}
instance Property "EndpointInput" ModelExplainabilityJobInputProperty where
  type PropertyType "EndpointInput" ModelExplainabilityJobInputProperty = EndpointInputProperty
  set newValue ModelExplainabilityJobInputProperty {..}
    = ModelExplainabilityJobInputProperty
        {endpointInput = Prelude.pure newValue, ..}