module Stratosphere.IoTSiteWise.ComputationModel.ComputationModelConfigurationProperty (
        module Exports, ComputationModelConfigurationProperty(..),
        mkComputationModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.ComputationModel.AnomalyDetectionComputationModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComputationModelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodelconfiguration.html>
    ComputationModelConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodelconfiguration.html#cfn-iotsitewise-computationmodel-computationmodelconfiguration-anomalydetection>
                                           anomalyDetection :: (Prelude.Maybe AnomalyDetectionComputationModelConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputationModelConfigurationProperty ::
  ComputationModelConfigurationProperty
mkComputationModelConfigurationProperty
  = ComputationModelConfigurationProperty
      {haddock_workaround_ = (), anomalyDetection = Prelude.Nothing}
instance ToResourceProperties ComputationModelConfigurationProperty where
  toResourceProperties ComputationModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel.ComputationModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnomalyDetection" Prelude.<$> anomalyDetection])}
instance JSON.ToJSON ComputationModelConfigurationProperty where
  toJSON ComputationModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnomalyDetection" Prelude.<$> anomalyDetection]))
instance Property "AnomalyDetection" ComputationModelConfigurationProperty where
  type PropertyType "AnomalyDetection" ComputationModelConfigurationProperty = AnomalyDetectionComputationModelConfigurationProperty
  set newValue ComputationModelConfigurationProperty {..}
    = ComputationModelConfigurationProperty
        {anomalyDetection = Prelude.pure newValue, ..}