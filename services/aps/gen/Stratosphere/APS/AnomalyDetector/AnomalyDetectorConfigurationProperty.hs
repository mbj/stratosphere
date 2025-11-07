module Stratosphere.APS.AnomalyDetector.AnomalyDetectorConfigurationProperty (
        module Exports, AnomalyDetectorConfigurationProperty(..),
        mkAnomalyDetectorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.AnomalyDetector.RandomCutForestConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AnomalyDetectorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-anomalydetectorconfiguration.html>
    AnomalyDetectorConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-anomalydetectorconfiguration.html#cfn-aps-anomalydetector-anomalydetectorconfiguration-randomcutforest>
                                          randomCutForest :: RandomCutForestConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyDetectorConfigurationProperty ::
  RandomCutForestConfigurationProperty
  -> AnomalyDetectorConfigurationProperty
mkAnomalyDetectorConfigurationProperty randomCutForest
  = AnomalyDetectorConfigurationProperty
      {haddock_workaround_ = (), randomCutForest = randomCutForest}
instance ToResourceProperties AnomalyDetectorConfigurationProperty where
  toResourceProperties AnomalyDetectorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::AnomalyDetector.AnomalyDetectorConfiguration",
         supportsTags = Prelude.False,
         properties = ["RandomCutForest" JSON..= randomCutForest]}
instance JSON.ToJSON AnomalyDetectorConfigurationProperty where
  toJSON AnomalyDetectorConfigurationProperty {..}
    = JSON.object ["RandomCutForest" JSON..= randomCutForest]
instance Property "RandomCutForest" AnomalyDetectorConfigurationProperty where
  type PropertyType "RandomCutForest" AnomalyDetectorConfigurationProperty = RandomCutForestConfigurationProperty
  set newValue AnomalyDetectorConfigurationProperty {..}
    = AnomalyDetectorConfigurationProperty
        {randomCutForest = newValue, ..}