module Stratosphere.Bedrock.Agent.InferenceConfigurationProperty (
        InferenceConfigurationProperty(..),
        mkInferenceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceConfigurationProperty
  = InferenceConfigurationProperty {maximumLength :: (Prelude.Maybe (Value Prelude.Double)),
                                    stopSequences :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    temperature :: (Prelude.Maybe (Value Prelude.Double)),
                                    topK :: (Prelude.Maybe (Value Prelude.Double)),
                                    topP :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceConfigurationProperty :: InferenceConfigurationProperty
mkInferenceConfigurationProperty
  = InferenceConfigurationProperty
      {maximumLength = Prelude.Nothing, stopSequences = Prelude.Nothing,
       temperature = Prelude.Nothing, topK = Prelude.Nothing,
       topP = Prelude.Nothing}
instance ToResourceProperties InferenceConfigurationProperty where
  toResourceProperties InferenceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.InferenceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumLength" Prelude.<$> maximumLength,
                            (JSON..=) "StopSequences" Prelude.<$> stopSequences,
                            (JSON..=) "Temperature" Prelude.<$> temperature,
                            (JSON..=) "TopK" Prelude.<$> topK,
                            (JSON..=) "TopP" Prelude.<$> topP])}
instance JSON.ToJSON InferenceConfigurationProperty where
  toJSON InferenceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumLength" Prelude.<$> maximumLength,
               (JSON..=) "StopSequences" Prelude.<$> stopSequences,
               (JSON..=) "Temperature" Prelude.<$> temperature,
               (JSON..=) "TopK" Prelude.<$> topK,
               (JSON..=) "TopP" Prelude.<$> topP]))
instance Property "MaximumLength" InferenceConfigurationProperty where
  type PropertyType "MaximumLength" InferenceConfigurationProperty = Value Prelude.Double
  set newValue InferenceConfigurationProperty {..}
    = InferenceConfigurationProperty
        {maximumLength = Prelude.pure newValue, ..}
instance Property "StopSequences" InferenceConfigurationProperty where
  type PropertyType "StopSequences" InferenceConfigurationProperty = ValueList Prelude.Text
  set newValue InferenceConfigurationProperty {..}
    = InferenceConfigurationProperty
        {stopSequences = Prelude.pure newValue, ..}
instance Property "Temperature" InferenceConfigurationProperty where
  type PropertyType "Temperature" InferenceConfigurationProperty = Value Prelude.Double
  set newValue InferenceConfigurationProperty {..}
    = InferenceConfigurationProperty
        {temperature = Prelude.pure newValue, ..}
instance Property "TopK" InferenceConfigurationProperty where
  type PropertyType "TopK" InferenceConfigurationProperty = Value Prelude.Double
  set newValue InferenceConfigurationProperty {..}
    = InferenceConfigurationProperty {topK = Prelude.pure newValue, ..}
instance Property "TopP" InferenceConfigurationProperty where
  type PropertyType "TopP" InferenceConfigurationProperty = Value Prelude.Double
  set newValue InferenceConfigurationProperty {..}
    = InferenceConfigurationProperty {topP = Prelude.pure newValue, ..}