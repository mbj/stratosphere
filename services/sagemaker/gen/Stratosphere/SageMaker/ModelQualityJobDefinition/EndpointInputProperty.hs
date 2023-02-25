module Stratosphere.SageMaker.ModelQualityJobDefinition.EndpointInputProperty (
        EndpointInputProperty(..), mkEndpointInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointInputProperty
  = EndpointInputProperty {endTimeOffset :: (Prelude.Maybe (Value Prelude.Text)),
                           endpointName :: (Value Prelude.Text),
                           inferenceAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           localPath :: (Value Prelude.Text),
                           probabilityAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           probabilityThresholdAttribute :: (Prelude.Maybe (Value Prelude.Double)),
                           s3DataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                           s3InputMode :: (Prelude.Maybe (Value Prelude.Text)),
                           startTimeOffset :: (Prelude.Maybe (Value Prelude.Text))}
mkEndpointInputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EndpointInputProperty
mkEndpointInputProperty endpointName localPath
  = EndpointInputProperty
      {endpointName = endpointName, localPath = localPath,
       endTimeOffset = Prelude.Nothing,
       inferenceAttribute = Prelude.Nothing,
       probabilityAttribute = Prelude.Nothing,
       probabilityThresholdAttribute = Prelude.Nothing,
       s3DataDistributionType = Prelude.Nothing,
       s3InputMode = Prelude.Nothing, startTimeOffset = Prelude.Nothing}
instance ToResourceProperties EndpointInputProperty where
  toResourceProperties EndpointInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.EndpointInput",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName,
                            "LocalPath" JSON..= localPath]
                           (Prelude.catMaybes
                              [(JSON..=) "EndTimeOffset" Prelude.<$> endTimeOffset,
                               (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                               (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                               (JSON..=) "ProbabilityThresholdAttribute"
                                 Prelude.<$> probabilityThresholdAttribute,
                               (JSON..=) "S3DataDistributionType"
                                 Prelude.<$> s3DataDistributionType,
                               (JSON..=) "S3InputMode" Prelude.<$> s3InputMode,
                               (JSON..=) "StartTimeOffset" Prelude.<$> startTimeOffset]))}
instance JSON.ToJSON EndpointInputProperty where
  toJSON EndpointInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName,
               "LocalPath" JSON..= localPath]
              (Prelude.catMaybes
                 [(JSON..=) "EndTimeOffset" Prelude.<$> endTimeOffset,
                  (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                  (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                  (JSON..=) "ProbabilityThresholdAttribute"
                    Prelude.<$> probabilityThresholdAttribute,
                  (JSON..=) "S3DataDistributionType"
                    Prelude.<$> s3DataDistributionType,
                  (JSON..=) "S3InputMode" Prelude.<$> s3InputMode,
                  (JSON..=) "StartTimeOffset" Prelude.<$> startTimeOffset])))
instance Property "EndTimeOffset" EndpointInputProperty where
  type PropertyType "EndTimeOffset" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {endTimeOffset = Prelude.pure newValue, ..}
instance Property "EndpointName" EndpointInputProperty where
  type PropertyType "EndpointName" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {endpointName = newValue, ..}
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
instance Property "ProbabilityThresholdAttribute" EndpointInputProperty where
  type PropertyType "ProbabilityThresholdAttribute" EndpointInputProperty = Value Prelude.Double
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {probabilityThresholdAttribute = Prelude.pure newValue, ..}
instance Property "S3DataDistributionType" EndpointInputProperty where
  type PropertyType "S3DataDistributionType" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {s3DataDistributionType = Prelude.pure newValue, ..}
instance Property "S3InputMode" EndpointInputProperty where
  type PropertyType "S3InputMode" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {s3InputMode = Prelude.pure newValue, ..}
instance Property "StartTimeOffset" EndpointInputProperty where
  type PropertyType "StartTimeOffset" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {startTimeOffset = Prelude.pure newValue, ..}