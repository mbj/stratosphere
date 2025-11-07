module Stratosphere.InspectorV2.CodeSecurityScanConfiguration.PeriodicScanConfigurationProperty (
        PeriodicScanConfigurationProperty(..),
        mkPeriodicScanConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeriodicScanConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-periodicscanconfiguration.html>
    PeriodicScanConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-periodicscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-periodicscanconfiguration-frequency>
                                       frequency :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-periodicscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-periodicscanconfiguration-frequencyexpression>
                                       frequencyExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodicScanConfigurationProperty ::
  PeriodicScanConfigurationProperty
mkPeriodicScanConfigurationProperty
  = PeriodicScanConfigurationProperty
      {haddock_workaround_ = (), frequency = Prelude.Nothing,
       frequencyExpression = Prelude.Nothing}
instance ToResourceProperties PeriodicScanConfigurationProperty where
  toResourceProperties PeriodicScanConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityScanConfiguration.PeriodicScanConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "frequency" Prelude.<$> frequency,
                            (JSON..=) "frequencyExpression" Prelude.<$> frequencyExpression])}
instance JSON.ToJSON PeriodicScanConfigurationProperty where
  toJSON PeriodicScanConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "frequency" Prelude.<$> frequency,
               (JSON..=) "frequencyExpression" Prelude.<$> frequencyExpression]))
instance Property "frequency" PeriodicScanConfigurationProperty where
  type PropertyType "frequency" PeriodicScanConfigurationProperty = Value Prelude.Text
  set newValue PeriodicScanConfigurationProperty {..}
    = PeriodicScanConfigurationProperty
        {frequency = Prelude.pure newValue, ..}
instance Property "frequencyExpression" PeriodicScanConfigurationProperty where
  type PropertyType "frequencyExpression" PeriodicScanConfigurationProperty = Value Prelude.Text
  set newValue PeriodicScanConfigurationProperty {..}
    = PeriodicScanConfigurationProperty
        {frequencyExpression = Prelude.pure newValue, ..}