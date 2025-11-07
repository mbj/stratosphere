module Stratosphere.InspectorV2.CodeSecurityScanConfiguration.ContinuousIntegrationScanConfigurationProperty (
        ContinuousIntegrationScanConfigurationProperty(..),
        mkContinuousIntegrationScanConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContinuousIntegrationScanConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration.html>
    ContinuousIntegrationScanConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration-supportedevents>
                                                    supportedEvents :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContinuousIntegrationScanConfigurationProperty ::
  ValueList Prelude.Text
  -> ContinuousIntegrationScanConfigurationProperty
mkContinuousIntegrationScanConfigurationProperty supportedEvents
  = ContinuousIntegrationScanConfigurationProperty
      {haddock_workaround_ = (), supportedEvents = supportedEvents}
instance ToResourceProperties ContinuousIntegrationScanConfigurationProperty where
  toResourceProperties
    ContinuousIntegrationScanConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityScanConfiguration.ContinuousIntegrationScanConfiguration",
         supportsTags = Prelude.False,
         properties = ["supportedEvents" JSON..= supportedEvents]}
instance JSON.ToJSON ContinuousIntegrationScanConfigurationProperty where
  toJSON ContinuousIntegrationScanConfigurationProperty {..}
    = JSON.object ["supportedEvents" JSON..= supportedEvents]
instance Property "supportedEvents" ContinuousIntegrationScanConfigurationProperty where
  type PropertyType "supportedEvents" ContinuousIntegrationScanConfigurationProperty = ValueList Prelude.Text
  set newValue ContinuousIntegrationScanConfigurationProperty {..}
    = ContinuousIntegrationScanConfigurationProperty
        {supportedEvents = newValue, ..}