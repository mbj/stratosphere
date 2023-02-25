module Stratosphere.ImageBuilder.DistributionConfiguration.DistributionProperty (
        module Exports, DistributionProperty(..), mkDistributionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.AmiDistributionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.ContainerDistributionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.LaunchTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DistributionProperty
  = DistributionProperty {amiDistributionConfiguration :: (Prelude.Maybe AmiDistributionConfigurationProperty),
                          containerDistributionConfiguration :: (Prelude.Maybe ContainerDistributionConfigurationProperty),
                          fastLaunchConfigurations :: (Prelude.Maybe [FastLaunchConfigurationProperty]),
                          launchTemplateConfigurations :: (Prelude.Maybe [LaunchTemplateConfigurationProperty]),
                          licenseConfigurationArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                          region :: (Value Prelude.Text)}
mkDistributionProperty ::
  Value Prelude.Text -> DistributionProperty
mkDistributionProperty region
  = DistributionProperty
      {region = region, amiDistributionConfiguration = Prelude.Nothing,
       containerDistributionConfiguration = Prelude.Nothing,
       fastLaunchConfigurations = Prelude.Nothing,
       launchTemplateConfigurations = Prelude.Nothing,
       licenseConfigurationArns = Prelude.Nothing}
instance ToResourceProperties DistributionProperty where
  toResourceProperties DistributionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.Distribution",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "AmiDistributionConfiguration"
                                 Prelude.<$> amiDistributionConfiguration,
                               (JSON..=) "ContainerDistributionConfiguration"
                                 Prelude.<$> containerDistributionConfiguration,
                               (JSON..=) "FastLaunchConfigurations"
                                 Prelude.<$> fastLaunchConfigurations,
                               (JSON..=) "LaunchTemplateConfigurations"
                                 Prelude.<$> launchTemplateConfigurations,
                               (JSON..=) "LicenseConfigurationArns"
                                 Prelude.<$> licenseConfigurationArns]))}
instance JSON.ToJSON DistributionProperty where
  toJSON DistributionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes
                 [(JSON..=) "AmiDistributionConfiguration"
                    Prelude.<$> amiDistributionConfiguration,
                  (JSON..=) "ContainerDistributionConfiguration"
                    Prelude.<$> containerDistributionConfiguration,
                  (JSON..=) "FastLaunchConfigurations"
                    Prelude.<$> fastLaunchConfigurations,
                  (JSON..=) "LaunchTemplateConfigurations"
                    Prelude.<$> launchTemplateConfigurations,
                  (JSON..=) "LicenseConfigurationArns"
                    Prelude.<$> licenseConfigurationArns])))
instance Property "AmiDistributionConfiguration" DistributionProperty where
  type PropertyType "AmiDistributionConfiguration" DistributionProperty = AmiDistributionConfigurationProperty
  set newValue DistributionProperty {..}
    = DistributionProperty
        {amiDistributionConfiguration = Prelude.pure newValue, ..}
instance Property "ContainerDistributionConfiguration" DistributionProperty where
  type PropertyType "ContainerDistributionConfiguration" DistributionProperty = ContainerDistributionConfigurationProperty
  set newValue DistributionProperty {..}
    = DistributionProperty
        {containerDistributionConfiguration = Prelude.pure newValue, ..}
instance Property "FastLaunchConfigurations" DistributionProperty where
  type PropertyType "FastLaunchConfigurations" DistributionProperty = [FastLaunchConfigurationProperty]
  set newValue DistributionProperty {..}
    = DistributionProperty
        {fastLaunchConfigurations = Prelude.pure newValue, ..}
instance Property "LaunchTemplateConfigurations" DistributionProperty where
  type PropertyType "LaunchTemplateConfigurations" DistributionProperty = [LaunchTemplateConfigurationProperty]
  set newValue DistributionProperty {..}
    = DistributionProperty
        {launchTemplateConfigurations = Prelude.pure newValue, ..}
instance Property "LicenseConfigurationArns" DistributionProperty where
  type PropertyType "LicenseConfigurationArns" DistributionProperty = ValueList (Value Prelude.Text)
  set newValue DistributionProperty {..}
    = DistributionProperty
        {licenseConfigurationArns = Prelude.pure newValue, ..}
instance Property "Region" DistributionProperty where
  type PropertyType "Region" DistributionProperty = Value Prelude.Text
  set newValue DistributionProperty {..}
    = DistributionProperty {region = newValue, ..}