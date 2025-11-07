module Stratosphere.DataZone.EnvironmentBlueprintConfiguration (
        module Exports, EnvironmentBlueprintConfiguration(..),
        mkEnvironmentBlueprintConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentBlueprintConfiguration.ProvisioningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentBlueprintConfiguration.RegionalParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentBlueprintConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html>
    EnvironmentBlueprintConfiguration {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-domainidentifier>
                                       domainIdentifier :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-enabledregions>
                                       enabledRegions :: (ValueList Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-environmentblueprintidentifier>
                                       environmentBlueprintIdentifier :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-environmentrolepermissionboundary>
                                       environmentRolePermissionBoundary :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-manageaccessrolearn>
                                       manageAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-provisioningconfigurations>
                                       provisioningConfigurations :: (Prelude.Maybe [ProvisioningConfigurationProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-provisioningrolearn>
                                       provisioningRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentblueprintconfiguration.html#cfn-datazone-environmentblueprintconfiguration-regionalparameters>
                                       regionalParameters :: (Prelude.Maybe [RegionalParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentBlueprintConfiguration ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> EnvironmentBlueprintConfiguration
mkEnvironmentBlueprintConfiguration
  domainIdentifier
  enabledRegions
  environmentBlueprintIdentifier
  = EnvironmentBlueprintConfiguration
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       enabledRegions = enabledRegions,
       environmentBlueprintIdentifier = environmentBlueprintIdentifier,
       environmentRolePermissionBoundary = Prelude.Nothing,
       manageAccessRoleArn = Prelude.Nothing,
       provisioningConfigurations = Prelude.Nothing,
       provisioningRoleArn = Prelude.Nothing,
       regionalParameters = Prelude.Nothing}
instance ToResourceProperties EnvironmentBlueprintConfiguration where
  toResourceProperties EnvironmentBlueprintConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentBlueprintConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "EnabledRegions" JSON..= enabledRegions,
                            "EnvironmentBlueprintIdentifier"
                              JSON..= environmentBlueprintIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "EnvironmentRolePermissionBoundary"
                                 Prelude.<$> environmentRolePermissionBoundary,
                               (JSON..=) "ManageAccessRoleArn" Prelude.<$> manageAccessRoleArn,
                               (JSON..=) "ProvisioningConfigurations"
                                 Prelude.<$> provisioningConfigurations,
                               (JSON..=) "ProvisioningRoleArn" Prelude.<$> provisioningRoleArn,
                               (JSON..=) "RegionalParameters" Prelude.<$> regionalParameters]))}
instance JSON.ToJSON EnvironmentBlueprintConfiguration where
  toJSON EnvironmentBlueprintConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "EnabledRegions" JSON..= enabledRegions,
               "EnvironmentBlueprintIdentifier"
                 JSON..= environmentBlueprintIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "EnvironmentRolePermissionBoundary"
                    Prelude.<$> environmentRolePermissionBoundary,
                  (JSON..=) "ManageAccessRoleArn" Prelude.<$> manageAccessRoleArn,
                  (JSON..=) "ProvisioningConfigurations"
                    Prelude.<$> provisioningConfigurations,
                  (JSON..=) "ProvisioningRoleArn" Prelude.<$> provisioningRoleArn,
                  (JSON..=) "RegionalParameters" Prelude.<$> regionalParameters])))
instance Property "DomainIdentifier" EnvironmentBlueprintConfiguration where
  type PropertyType "DomainIdentifier" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {domainIdentifier = newValue, ..}
instance Property "EnabledRegions" EnvironmentBlueprintConfiguration where
  type PropertyType "EnabledRegions" EnvironmentBlueprintConfiguration = ValueList Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration {enabledRegions = newValue, ..}
instance Property "EnvironmentBlueprintIdentifier" EnvironmentBlueprintConfiguration where
  type PropertyType "EnvironmentBlueprintIdentifier" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {environmentBlueprintIdentifier = newValue, ..}
instance Property "EnvironmentRolePermissionBoundary" EnvironmentBlueprintConfiguration where
  type PropertyType "EnvironmentRolePermissionBoundary" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {environmentRolePermissionBoundary = Prelude.pure newValue, ..}
instance Property "ManageAccessRoleArn" EnvironmentBlueprintConfiguration where
  type PropertyType "ManageAccessRoleArn" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {manageAccessRoleArn = Prelude.pure newValue, ..}
instance Property "ProvisioningConfigurations" EnvironmentBlueprintConfiguration where
  type PropertyType "ProvisioningConfigurations" EnvironmentBlueprintConfiguration = [ProvisioningConfigurationProperty]
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {provisioningConfigurations = Prelude.pure newValue, ..}
instance Property "ProvisioningRoleArn" EnvironmentBlueprintConfiguration where
  type PropertyType "ProvisioningRoleArn" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {provisioningRoleArn = Prelude.pure newValue, ..}
instance Property "RegionalParameters" EnvironmentBlueprintConfiguration where
  type PropertyType "RegionalParameters" EnvironmentBlueprintConfiguration = [RegionalParameterProperty]
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {regionalParameters = Prelude.pure newValue, ..}