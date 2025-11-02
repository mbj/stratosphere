module Stratosphere.SageMaker.InferenceExperiment.EndpointMetadataProperty (
        EndpointMetadataProperty(..), mkEndpointMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-endpointmetadata.html>
    EndpointMetadataProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-endpointmetadata.html#cfn-sagemaker-inferenceexperiment-endpointmetadata-endpointconfigname>
                              endpointConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-endpointmetadata.html#cfn-sagemaker-inferenceexperiment-endpointmetadata-endpointname>
                              endpointName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-endpointmetadata.html#cfn-sagemaker-inferenceexperiment-endpointmetadata-endpointstatus>
                              endpointStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointMetadataProperty ::
  Value Prelude.Text -> EndpointMetadataProperty
mkEndpointMetadataProperty endpointName
  = EndpointMetadataProperty
      {haddock_workaround_ = (), endpointName = endpointName,
       endpointConfigName = Prelude.Nothing,
       endpointStatus = Prelude.Nothing}
instance ToResourceProperties EndpointMetadataProperty where
  toResourceProperties EndpointMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.EndpointMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointConfigName" Prelude.<$> endpointConfigName,
                               (JSON..=) "EndpointStatus" Prelude.<$> endpointStatus]))}
instance JSON.ToJSON EndpointMetadataProperty where
  toJSON EndpointMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointConfigName" Prelude.<$> endpointConfigName,
                  (JSON..=) "EndpointStatus" Prelude.<$> endpointStatus])))
instance Property "EndpointConfigName" EndpointMetadataProperty where
  type PropertyType "EndpointConfigName" EndpointMetadataProperty = Value Prelude.Text
  set newValue EndpointMetadataProperty {..}
    = EndpointMetadataProperty
        {endpointConfigName = Prelude.pure newValue, ..}
instance Property "EndpointName" EndpointMetadataProperty where
  type PropertyType "EndpointName" EndpointMetadataProperty = Value Prelude.Text
  set newValue EndpointMetadataProperty {..}
    = EndpointMetadataProperty {endpointName = newValue, ..}
instance Property "EndpointStatus" EndpointMetadataProperty where
  type PropertyType "EndpointStatus" EndpointMetadataProperty = Value Prelude.Text
  set newValue EndpointMetadataProperty {..}
    = EndpointMetadataProperty
        {endpointStatus = Prelude.pure newValue, ..}