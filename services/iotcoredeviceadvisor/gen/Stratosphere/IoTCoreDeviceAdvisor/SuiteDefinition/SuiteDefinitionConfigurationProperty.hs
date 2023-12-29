module Stratosphere.IoTCoreDeviceAdvisor.SuiteDefinition.SuiteDefinitionConfigurationProperty (
        module Exports, SuiteDefinitionConfigurationProperty(..),
        mkSuiteDefinitionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTCoreDeviceAdvisor.SuiteDefinition.DeviceUnderTestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuiteDefinitionConfigurationProperty
  = SuiteDefinitionConfigurationProperty {devicePermissionRoleArn :: (Value Prelude.Text),
                                          devices :: (Prelude.Maybe [DeviceUnderTestProperty]),
                                          intendedForQualification :: (Prelude.Maybe (Value Prelude.Bool)),
                                          rootGroup :: (Value Prelude.Text),
                                          suiteDefinitionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuiteDefinitionConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SuiteDefinitionConfigurationProperty
mkSuiteDefinitionConfigurationProperty
  devicePermissionRoleArn
  rootGroup
  = SuiteDefinitionConfigurationProperty
      {devicePermissionRoleArn = devicePermissionRoleArn,
       rootGroup = rootGroup, devices = Prelude.Nothing,
       intendedForQualification = Prelude.Nothing,
       suiteDefinitionName = Prelude.Nothing}
instance ToResourceProperties SuiteDefinitionConfigurationProperty where
  toResourceProperties SuiteDefinitionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTCoreDeviceAdvisor::SuiteDefinition.SuiteDefinitionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DevicePermissionRoleArn" JSON..= devicePermissionRoleArn,
                            "RootGroup" JSON..= rootGroup]
                           (Prelude.catMaybes
                              [(JSON..=) "Devices" Prelude.<$> devices,
                               (JSON..=) "IntendedForQualification"
                                 Prelude.<$> intendedForQualification,
                               (JSON..=) "SuiteDefinitionName" Prelude.<$> suiteDefinitionName]))}
instance JSON.ToJSON SuiteDefinitionConfigurationProperty where
  toJSON SuiteDefinitionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DevicePermissionRoleArn" JSON..= devicePermissionRoleArn,
               "RootGroup" JSON..= rootGroup]
              (Prelude.catMaybes
                 [(JSON..=) "Devices" Prelude.<$> devices,
                  (JSON..=) "IntendedForQualification"
                    Prelude.<$> intendedForQualification,
                  (JSON..=) "SuiteDefinitionName" Prelude.<$> suiteDefinitionName])))
instance Property "DevicePermissionRoleArn" SuiteDefinitionConfigurationProperty where
  type PropertyType "DevicePermissionRoleArn" SuiteDefinitionConfigurationProperty = Value Prelude.Text
  set newValue SuiteDefinitionConfigurationProperty {..}
    = SuiteDefinitionConfigurationProperty
        {devicePermissionRoleArn = newValue, ..}
instance Property "Devices" SuiteDefinitionConfigurationProperty where
  type PropertyType "Devices" SuiteDefinitionConfigurationProperty = [DeviceUnderTestProperty]
  set newValue SuiteDefinitionConfigurationProperty {..}
    = SuiteDefinitionConfigurationProperty
        {devices = Prelude.pure newValue, ..}
instance Property "IntendedForQualification" SuiteDefinitionConfigurationProperty where
  type PropertyType "IntendedForQualification" SuiteDefinitionConfigurationProperty = Value Prelude.Bool
  set newValue SuiteDefinitionConfigurationProperty {..}
    = SuiteDefinitionConfigurationProperty
        {intendedForQualification = Prelude.pure newValue, ..}
instance Property "RootGroup" SuiteDefinitionConfigurationProperty where
  type PropertyType "RootGroup" SuiteDefinitionConfigurationProperty = Value Prelude.Text
  set newValue SuiteDefinitionConfigurationProperty {..}
    = SuiteDefinitionConfigurationProperty {rootGroup = newValue, ..}
instance Property "SuiteDefinitionName" SuiteDefinitionConfigurationProperty where
  type PropertyType "SuiteDefinitionName" SuiteDefinitionConfigurationProperty = Value Prelude.Text
  set newValue SuiteDefinitionConfigurationProperty {..}
    = SuiteDefinitionConfigurationProperty
        {suiteDefinitionName = Prelude.pure newValue, ..}