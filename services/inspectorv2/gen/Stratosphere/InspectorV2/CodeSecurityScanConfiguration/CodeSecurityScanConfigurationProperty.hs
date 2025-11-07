module Stratosphere.InspectorV2.CodeSecurityScanConfiguration.CodeSecurityScanConfigurationProperty (
        module Exports, CodeSecurityScanConfigurationProperty(..),
        mkCodeSecurityScanConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityScanConfiguration.ContinuousIntegrationScanConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityScanConfiguration.PeriodicScanConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeSecurityScanConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html>
    CodeSecurityScanConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-continuousintegrationscanconfiguration>
                                           continuousIntegrationScanConfiguration :: (Prelude.Maybe ContinuousIntegrationScanConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-periodicscanconfiguration>
                                           periodicScanConfiguration :: (Prelude.Maybe PeriodicScanConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-rulesetcategories>
                                           ruleSetCategories :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSecurityScanConfigurationProperty ::
  ValueList Prelude.Text -> CodeSecurityScanConfigurationProperty
mkCodeSecurityScanConfigurationProperty ruleSetCategories
  = CodeSecurityScanConfigurationProperty
      {haddock_workaround_ = (), ruleSetCategories = ruleSetCategories,
       continuousIntegrationScanConfiguration = Prelude.Nothing,
       periodicScanConfiguration = Prelude.Nothing}
instance ToResourceProperties CodeSecurityScanConfigurationProperty where
  toResourceProperties CodeSecurityScanConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityScanConfiguration.CodeSecurityScanConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ruleSetCategories" JSON..= ruleSetCategories]
                           (Prelude.catMaybes
                              [(JSON..=) "continuousIntegrationScanConfiguration"
                                 Prelude.<$> continuousIntegrationScanConfiguration,
                               (JSON..=) "periodicScanConfiguration"
                                 Prelude.<$> periodicScanConfiguration]))}
instance JSON.ToJSON CodeSecurityScanConfigurationProperty where
  toJSON CodeSecurityScanConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ruleSetCategories" JSON..= ruleSetCategories]
              (Prelude.catMaybes
                 [(JSON..=) "continuousIntegrationScanConfiguration"
                    Prelude.<$> continuousIntegrationScanConfiguration,
                  (JSON..=) "periodicScanConfiguration"
                    Prelude.<$> periodicScanConfiguration])))
instance Property "continuousIntegrationScanConfiguration" CodeSecurityScanConfigurationProperty where
  type PropertyType "continuousIntegrationScanConfiguration" CodeSecurityScanConfigurationProperty = ContinuousIntegrationScanConfigurationProperty
  set newValue CodeSecurityScanConfigurationProperty {..}
    = CodeSecurityScanConfigurationProperty
        {continuousIntegrationScanConfiguration = Prelude.pure newValue,
         ..}
instance Property "periodicScanConfiguration" CodeSecurityScanConfigurationProperty where
  type PropertyType "periodicScanConfiguration" CodeSecurityScanConfigurationProperty = PeriodicScanConfigurationProperty
  set newValue CodeSecurityScanConfigurationProperty {..}
    = CodeSecurityScanConfigurationProperty
        {periodicScanConfiguration = Prelude.pure newValue, ..}
instance Property "ruleSetCategories" CodeSecurityScanConfigurationProperty where
  type PropertyType "ruleSetCategories" CodeSecurityScanConfigurationProperty = ValueList Prelude.Text
  set newValue CodeSecurityScanConfigurationProperty {..}
    = CodeSecurityScanConfigurationProperty
        {ruleSetCategories = newValue, ..}