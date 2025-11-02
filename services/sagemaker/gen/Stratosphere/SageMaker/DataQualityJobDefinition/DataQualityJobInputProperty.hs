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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityjobinput.html>
    DataQualityJobInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityjobinput.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityjobinput-batchtransforminput>
                                 batchTransformInput :: (Prelude.Maybe BatchTransformInputProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityjobinput.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityjobinput-endpointinput>
                                 endpointInput :: (Prelude.Maybe EndpointInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQualityJobInputProperty :: DataQualityJobInputProperty
mkDataQualityJobInputProperty
  = DataQualityJobInputProperty
      {haddock_workaround_ = (), batchTransformInput = Prelude.Nothing,
       endpointInput = Prelude.Nothing}
instance ToResourceProperties DataQualityJobInputProperty where
  toResourceProperties DataQualityJobInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.DataQualityJobInput",
         supportsTags = Prelude.False,
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