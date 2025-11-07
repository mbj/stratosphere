module Stratosphere.InspectorV2.CodeSecurityScanConfiguration (
        module Exports, CodeSecurityScanConfiguration(..),
        mkCodeSecurityScanConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityScanConfiguration.CodeSecurityScanConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityScanConfiguration.ScopeSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeSecurityScanConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html>
    CodeSecurityScanConfiguration {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-configuration>
                                   configuration :: (Prelude.Maybe CodeSecurityScanConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-level>
                                   level :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-name>
                                   name :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-scopesettings>
                                   scopeSettings :: (Prelude.Maybe ScopeSettingsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspectorv2-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-tags>
                                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSecurityScanConfiguration :: CodeSecurityScanConfiguration
mkCodeSecurityScanConfiguration
  = CodeSecurityScanConfiguration
      {haddock_workaround_ = (), configuration = Prelude.Nothing,
       level = Prelude.Nothing, name = Prelude.Nothing,
       scopeSettings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CodeSecurityScanConfiguration where
  toResourceProperties CodeSecurityScanConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityScanConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ScopeSettings" Prelude.<$> scopeSettings,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON CodeSecurityScanConfiguration where
  toJSON CodeSecurityScanConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ScopeSettings" Prelude.<$> scopeSettings,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Configuration" CodeSecurityScanConfiguration where
  type PropertyType "Configuration" CodeSecurityScanConfiguration = CodeSecurityScanConfigurationProperty
  set newValue CodeSecurityScanConfiguration {..}
    = CodeSecurityScanConfiguration
        {configuration = Prelude.pure newValue, ..}
instance Property "Level" CodeSecurityScanConfiguration where
  type PropertyType "Level" CodeSecurityScanConfiguration = Value Prelude.Text
  set newValue CodeSecurityScanConfiguration {..}
    = CodeSecurityScanConfiguration {level = Prelude.pure newValue, ..}
instance Property "Name" CodeSecurityScanConfiguration where
  type PropertyType "Name" CodeSecurityScanConfiguration = Value Prelude.Text
  set newValue CodeSecurityScanConfiguration {..}
    = CodeSecurityScanConfiguration {name = Prelude.pure newValue, ..}
instance Property "ScopeSettings" CodeSecurityScanConfiguration where
  type PropertyType "ScopeSettings" CodeSecurityScanConfiguration = ScopeSettingsProperty
  set newValue CodeSecurityScanConfiguration {..}
    = CodeSecurityScanConfiguration
        {scopeSettings = Prelude.pure newValue, ..}
instance Property "Tags" CodeSecurityScanConfiguration where
  type PropertyType "Tags" CodeSecurityScanConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CodeSecurityScanConfiguration {..}
    = CodeSecurityScanConfiguration {tags = Prelude.pure newValue, ..}