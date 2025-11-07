module Stratosphere.IoTSiteWise.ComputationModel.AnomalyDetectionComputationModelConfigurationProperty (
        AnomalyDetectionComputationModelConfigurationProperty(..),
        mkAnomalyDetectionComputationModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalyDetectionComputationModelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-anomalydetectioncomputationmodelconfiguration.html>
    AnomalyDetectionComputationModelConfigurationProperty {haddock_workaround_ :: (),
                                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-anomalydetectioncomputationmodelconfiguration.html#cfn-iotsitewise-computationmodel-anomalydetectioncomputationmodelconfiguration-inputproperties>
                                                           inputProperties :: (Value Prelude.Text),
                                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-anomalydetectioncomputationmodelconfiguration.html#cfn-iotsitewise-computationmodel-anomalydetectioncomputationmodelconfiguration-resultproperty>
                                                           resultProperty :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyDetectionComputationModelConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> AnomalyDetectionComputationModelConfigurationProperty
mkAnomalyDetectionComputationModelConfigurationProperty
  inputProperties
  resultProperty
  = AnomalyDetectionComputationModelConfigurationProperty
      {haddock_workaround_ = (), inputProperties = inputProperties,
       resultProperty = resultProperty}
instance ToResourceProperties AnomalyDetectionComputationModelConfigurationProperty where
  toResourceProperties
    AnomalyDetectionComputationModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel.AnomalyDetectionComputationModelConfiguration",
         supportsTags = Prelude.False,
         properties = ["InputProperties" JSON..= inputProperties,
                       "ResultProperty" JSON..= resultProperty]}
instance JSON.ToJSON AnomalyDetectionComputationModelConfigurationProperty where
  toJSON AnomalyDetectionComputationModelConfigurationProperty {..}
    = JSON.object
        ["InputProperties" JSON..= inputProperties,
         "ResultProperty" JSON..= resultProperty]
instance Property "InputProperties" AnomalyDetectionComputationModelConfigurationProperty where
  type PropertyType "InputProperties" AnomalyDetectionComputationModelConfigurationProperty = Value Prelude.Text
  set
    newValue
    AnomalyDetectionComputationModelConfigurationProperty {..}
    = AnomalyDetectionComputationModelConfigurationProperty
        {inputProperties = newValue, ..}
instance Property "ResultProperty" AnomalyDetectionComputationModelConfigurationProperty where
  type PropertyType "ResultProperty" AnomalyDetectionComputationModelConfigurationProperty = Value Prelude.Text
  set
    newValue
    AnomalyDetectionComputationModelConfigurationProperty {..}
    = AnomalyDetectionComputationModelConfigurationProperty
        {resultProperty = newValue, ..}