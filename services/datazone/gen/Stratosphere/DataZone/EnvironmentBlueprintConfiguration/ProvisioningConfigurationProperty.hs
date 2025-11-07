module Stratosphere.DataZone.EnvironmentBlueprintConfiguration.ProvisioningConfigurationProperty (
        module Exports, ProvisioningConfigurationProperty(..),
        mkProvisioningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentBlueprintConfiguration.LakeFormationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ProvisioningConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-provisioningconfiguration.html>
    ProvisioningConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-provisioningconfiguration.html#cfn-datazone-environmentblueprintconfiguration-provisioningconfiguration-lakeformationconfiguration>
                                       lakeFormationConfiguration :: LakeFormationConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningConfigurationProperty ::
  LakeFormationConfigurationProperty
  -> ProvisioningConfigurationProperty
mkProvisioningConfigurationProperty lakeFormationConfiguration
  = ProvisioningConfigurationProperty
      {haddock_workaround_ = (),
       lakeFormationConfiguration = lakeFormationConfiguration}
instance ToResourceProperties ProvisioningConfigurationProperty where
  toResourceProperties ProvisioningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentBlueprintConfiguration.ProvisioningConfiguration",
         supportsTags = Prelude.False,
         properties = ["LakeFormationConfiguration"
                         JSON..= lakeFormationConfiguration]}
instance JSON.ToJSON ProvisioningConfigurationProperty where
  toJSON ProvisioningConfigurationProperty {..}
    = JSON.object
        ["LakeFormationConfiguration" JSON..= lakeFormationConfiguration]
instance Property "LakeFormationConfiguration" ProvisioningConfigurationProperty where
  type PropertyType "LakeFormationConfiguration" ProvisioningConfigurationProperty = LakeFormationConfigurationProperty
  set newValue ProvisioningConfigurationProperty {..}
    = ProvisioningConfigurationProperty
        {lakeFormationConfiguration = newValue, ..}