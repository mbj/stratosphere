module Stratosphere.DataZone.EnvironmentBlueprintConfiguration (
        module Exports, EnvironmentBlueprintConfiguration(..),
        mkEnvironmentBlueprintConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentBlueprintConfiguration.RegionalParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentBlueprintConfiguration
  = EnvironmentBlueprintConfiguration {domainIdentifier :: (Value Prelude.Text),
                                       enabledRegions :: (ValueList Prelude.Text),
                                       environmentBlueprintIdentifier :: (Value Prelude.Text),
                                       manageAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       provisioningRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
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
      {domainIdentifier = domainIdentifier,
       enabledRegions = enabledRegions,
       environmentBlueprintIdentifier = environmentBlueprintIdentifier,
       manageAccessRoleArn = Prelude.Nothing,
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
                              [(JSON..=) "ManageAccessRoleArn" Prelude.<$> manageAccessRoleArn,
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
                 [(JSON..=) "ManageAccessRoleArn" Prelude.<$> manageAccessRoleArn,
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
instance Property "ManageAccessRoleArn" EnvironmentBlueprintConfiguration where
  type PropertyType "ManageAccessRoleArn" EnvironmentBlueprintConfiguration = Value Prelude.Text
  set newValue EnvironmentBlueprintConfiguration {..}
    = EnvironmentBlueprintConfiguration
        {manageAccessRoleArn = Prelude.pure newValue, ..}
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