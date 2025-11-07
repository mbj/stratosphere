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
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.SsmParameterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DistributionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html>
    DistributionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-amidistributionconfiguration>
                          amiDistributionConfiguration :: (Prelude.Maybe AmiDistributionConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-containerdistributionconfiguration>
                          containerDistributionConfiguration :: (Prelude.Maybe ContainerDistributionConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-fastlaunchconfigurations>
                          fastLaunchConfigurations :: (Prelude.Maybe [FastLaunchConfigurationProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-launchtemplateconfigurations>
                          launchTemplateConfigurations :: (Prelude.Maybe [LaunchTemplateConfigurationProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-licenseconfigurationarns>
                          licenseConfigurationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-region>
                          region :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-ssmparameterconfigurations>
                          ssmParameterConfigurations :: (Prelude.Maybe [SsmParameterConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistributionProperty ::
  Value Prelude.Text -> DistributionProperty
mkDistributionProperty region
  = DistributionProperty
      {haddock_workaround_ = (), region = region,
       amiDistributionConfiguration = Prelude.Nothing,
       containerDistributionConfiguration = Prelude.Nothing,
       fastLaunchConfigurations = Prelude.Nothing,
       launchTemplateConfigurations = Prelude.Nothing,
       licenseConfigurationArns = Prelude.Nothing,
       ssmParameterConfigurations = Prelude.Nothing}
instance ToResourceProperties DistributionProperty where
  toResourceProperties DistributionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.Distribution",
         supportsTags = Prelude.False,
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
                                 Prelude.<$> licenseConfigurationArns,
                               (JSON..=) "SsmParameterConfigurations"
                                 Prelude.<$> ssmParameterConfigurations]))}
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
                    Prelude.<$> licenseConfigurationArns,
                  (JSON..=) "SsmParameterConfigurations"
                    Prelude.<$> ssmParameterConfigurations])))
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
  type PropertyType "LicenseConfigurationArns" DistributionProperty = ValueList Prelude.Text
  set newValue DistributionProperty {..}
    = DistributionProperty
        {licenseConfigurationArns = Prelude.pure newValue, ..}
instance Property "Region" DistributionProperty where
  type PropertyType "Region" DistributionProperty = Value Prelude.Text
  set newValue DistributionProperty {..}
    = DistributionProperty {region = newValue, ..}
instance Property "SsmParameterConfigurations" DistributionProperty where
  type PropertyType "SsmParameterConfigurations" DistributionProperty = [SsmParameterConfigurationProperty]
  set newValue DistributionProperty {..}
    = DistributionProperty
        {ssmParameterConfigurations = Prelude.pure newValue, ..}