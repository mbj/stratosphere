module Stratosphere.IoT.SecurityProfile.MachineLearningDetectionConfigProperty (
        MachineLearningDetectionConfigProperty(..),
        mkMachineLearningDetectionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MachineLearningDetectionConfigProperty
  = MachineLearningDetectionConfigProperty {confidenceLevel :: (Prelude.Maybe (Value Prelude.Text))}
mkMachineLearningDetectionConfigProperty ::
  MachineLearningDetectionConfigProperty
mkMachineLearningDetectionConfigProperty
  = MachineLearningDetectionConfigProperty
      {confidenceLevel = Prelude.Nothing}
instance ToResourceProperties MachineLearningDetectionConfigProperty where
  toResourceProperties MachineLearningDetectionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.MachineLearningDetectionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfidenceLevel" Prelude.<$> confidenceLevel])}
instance JSON.ToJSON MachineLearningDetectionConfigProperty where
  toJSON MachineLearningDetectionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfidenceLevel" Prelude.<$> confidenceLevel]))
instance Property "ConfidenceLevel" MachineLearningDetectionConfigProperty where
  type PropertyType "ConfidenceLevel" MachineLearningDetectionConfigProperty = Value Prelude.Text
  set newValue MachineLearningDetectionConfigProperty {}
    = MachineLearningDetectionConfigProperty
        {confidenceLevel = Prelude.pure newValue, ..}