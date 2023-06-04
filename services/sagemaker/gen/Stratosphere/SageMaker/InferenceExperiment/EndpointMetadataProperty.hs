module Stratosphere.SageMaker.InferenceExperiment.EndpointMetadataProperty (
        EndpointMetadataProperty(..), mkEndpointMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointMetadataProperty
  = EndpointMetadataProperty {endpointConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                              endpointName :: (Value Prelude.Text),
                              endpointStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkEndpointMetadataProperty ::
  Value Prelude.Text -> EndpointMetadataProperty
mkEndpointMetadataProperty endpointName
  = EndpointMetadataProperty
      {endpointName = endpointName, endpointConfigName = Prelude.Nothing,
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