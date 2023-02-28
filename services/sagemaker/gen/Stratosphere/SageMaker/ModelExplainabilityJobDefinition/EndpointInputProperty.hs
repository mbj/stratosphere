module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.EndpointInputProperty (
        EndpointInputProperty(..), mkEndpointInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointInputProperty
  = EndpointInputProperty {endpointName :: (Value Prelude.Text),
                           featuresAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           inferenceAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           localPath :: (Value Prelude.Text),
                           probabilityAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           s3DataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                           s3InputMode :: (Prelude.Maybe (Value Prelude.Text))}
mkEndpointInputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EndpointInputProperty
mkEndpointInputProperty endpointName localPath
  = EndpointInputProperty
      {endpointName = endpointName, localPath = localPath,
       featuresAttribute = Prelude.Nothing,
       inferenceAttribute = Prelude.Nothing,
       probabilityAttribute = Prelude.Nothing,
       s3DataDistributionType = Prelude.Nothing,
       s3InputMode = Prelude.Nothing}
instance ToResourceProperties EndpointInputProperty where
  toResourceProperties EndpointInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.EndpointInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName,
                            "LocalPath" JSON..= localPath]
                           (Prelude.catMaybes
                              [(JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
                               (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                               (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                               (JSON..=) "S3DataDistributionType"
                                 Prelude.<$> s3DataDistributionType,
                               (JSON..=) "S3InputMode" Prelude.<$> s3InputMode]))}
instance JSON.ToJSON EndpointInputProperty where
  toJSON EndpointInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName,
               "LocalPath" JSON..= localPath]
              (Prelude.catMaybes
                 [(JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
                  (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                  (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                  (JSON..=) "S3DataDistributionType"
                    Prelude.<$> s3DataDistributionType,
                  (JSON..=) "S3InputMode" Prelude.<$> s3InputMode])))
instance Property "EndpointName" EndpointInputProperty where
  type PropertyType "EndpointName" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {endpointName = newValue, ..}
instance Property "FeaturesAttribute" EndpointInputProperty where
  type PropertyType "FeaturesAttribute" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {featuresAttribute = Prelude.pure newValue, ..}
instance Property "InferenceAttribute" EndpointInputProperty where
  type PropertyType "InferenceAttribute" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {inferenceAttribute = Prelude.pure newValue, ..}
instance Property "LocalPath" EndpointInputProperty where
  type PropertyType "LocalPath" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {localPath = newValue, ..}
instance Property "ProbabilityAttribute" EndpointInputProperty where
  type PropertyType "ProbabilityAttribute" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {probabilityAttribute = Prelude.pure newValue, ..}
instance Property "S3DataDistributionType" EndpointInputProperty where
  type PropertyType "S3DataDistributionType" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {s3DataDistributionType = Prelude.pure newValue, ..}
instance Property "S3InputMode" EndpointInputProperty where
  type PropertyType "S3InputMode" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {s3InputMode = Prelude.pure newValue, ..}