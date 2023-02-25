module Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityJobInputProperty (
        module Exports, DataQualityJobInputProperty(..),
        mkDataQualityJobInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.BatchTransformInputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.DataQualityJobDefinition.EndpointInputProperty as Exports
import Stratosphere.ResourceProperties
data DataQualityJobInputProperty
  = DataQualityJobInputProperty {batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                                 endpointInput :: (Prelude.Maybe EndpointInputProperty)}
mkDataQualityJobInputProperty :: DataQualityJobInputProperty
mkDataQualityJobInputProperty
  = DataQualityJobInputProperty
      {batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties DataQualityJobInputProperty where
  toResourceProperties DataQualityJobInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.DataQualityJobInput",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
                            (JSON..=) "EndpointInput" Prelude.<$> endpointInput])}
instance JSON.ToJSON DataQualityJobInputProperty where
  toJSON DataQualityJobInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchTransformInput" Prelude.<$> batchTransformInput,
               (JSON..=) "EndpointInput" Prelude.<$> endpointInput]))
instance Property "BatchTransformInput" DataQualityJobInputProperty where
  type PropertyType "BatchTransformInput" DataQualityJobInputProperty = BatchTransformInputProperty
  set newValue DataQualityJobInputProperty {..}
    = DataQualityJobInputProperty
        {batchTransformInput = Prelude.pure newValue, ..}
instance Property "EndpointInput" DataQualityJobInputProperty where
  type PropertyType "EndpointInput" DataQualityJobInputProperty = EndpointInputProperty
  set newValue DataQualityJobInputProperty {..}
    = DataQualityJobInputProperty
        {endpointInput = Prelude.pure newValue, ..}