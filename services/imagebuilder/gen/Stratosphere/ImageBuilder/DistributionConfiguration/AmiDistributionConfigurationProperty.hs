module Stratosphere.ImageBuilder.DistributionConfiguration.AmiDistributionConfigurationProperty (
        module Exports, AmiDistributionConfigurationProperty(..),
        mkAmiDistributionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.LaunchPermissionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmiDistributionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html>
    AmiDistributionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-amitags>
                                          amiTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-description>
                                          description :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-kmskeyid>
                                          kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-launchpermissionconfiguration>
                                          launchPermissionConfiguration :: (Prelude.Maybe LaunchPermissionConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-name>
                                          name :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-amidistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-amidistributionconfiguration-targetaccountids>
                                          targetAccountIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmiDistributionConfigurationProperty ::
  AmiDistributionConfigurationProperty
mkAmiDistributionConfigurationProperty
  = AmiDistributionConfigurationProperty
      {haddock_workaround_ = (), amiTags = Prelude.Nothing,
       description = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       launchPermissionConfiguration = Prelude.Nothing,
       name = Prelude.Nothing, targetAccountIds = Prelude.Nothing}
instance ToResourceProperties AmiDistributionConfigurationProperty where
  toResourceProperties AmiDistributionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.AmiDistributionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmiTags" Prelude.<$> amiTags,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LaunchPermissionConfiguration"
                              Prelude.<$> launchPermissionConfiguration,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "TargetAccountIds" Prelude.<$> targetAccountIds])}
instance JSON.ToJSON AmiDistributionConfigurationProperty where
  toJSON AmiDistributionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmiTags" Prelude.<$> amiTags,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LaunchPermissionConfiguration"
                 Prelude.<$> launchPermissionConfiguration,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "TargetAccountIds" Prelude.<$> targetAccountIds]))
instance Property "AmiTags" AmiDistributionConfigurationProperty where
  type PropertyType "AmiTags" AmiDistributionConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {amiTags = Prelude.pure newValue, ..}
instance Property "Description" AmiDistributionConfigurationProperty where
  type PropertyType "Description" AmiDistributionConfigurationProperty = Value Prelude.Text
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {description = Prelude.pure newValue, ..}
instance Property "KmsKeyId" AmiDistributionConfigurationProperty where
  type PropertyType "KmsKeyId" AmiDistributionConfigurationProperty = Value Prelude.Text
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LaunchPermissionConfiguration" AmiDistributionConfigurationProperty where
  type PropertyType "LaunchPermissionConfiguration" AmiDistributionConfigurationProperty = LaunchPermissionConfigurationProperty
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {launchPermissionConfiguration = Prelude.pure newValue, ..}
instance Property "Name" AmiDistributionConfigurationProperty where
  type PropertyType "Name" AmiDistributionConfigurationProperty = Value Prelude.Text
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {name = Prelude.pure newValue, ..}
instance Property "TargetAccountIds" AmiDistributionConfigurationProperty where
  type PropertyType "TargetAccountIds" AmiDistributionConfigurationProperty = ValueList Prelude.Text
  set newValue AmiDistributionConfigurationProperty {..}
    = AmiDistributionConfigurationProperty
        {targetAccountIds = Prelude.pure newValue, ..}