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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-machinelearningdetectionconfig.html>
    MachineLearningDetectionConfigProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-machinelearningdetectionconfig.html#cfn-iot-securityprofile-machinelearningdetectionconfig-confidencelevel>
                                            confidenceLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMachineLearningDetectionConfigProperty ::
  MachineLearningDetectionConfigProperty
mkMachineLearningDetectionConfigProperty
  = MachineLearningDetectionConfigProperty
      {haddock_workaround_ = (), confidenceLevel = Prelude.Nothing}
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
  set newValue MachineLearningDetectionConfigProperty {..}
    = MachineLearningDetectionConfigProperty
        {confidenceLevel = Prelude.pure newValue, ..}