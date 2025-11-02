module Stratosphere.AutoScaling.LaunchConfiguration (
        module Exports, LaunchConfiguration(..), mkLaunchConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.LaunchConfiguration.MetadataOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html>
    LaunchConfiguration {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-associatepublicipaddress>
                         associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-blockdevicemappings>
                         blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-classiclinkvpcid>
                         classicLinkVPCId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-classiclinkvpcsecuritygroups>
                         classicLinkVPCSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-ebsoptimized>
                         ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-iaminstanceprofile>
                         iamInstanceProfile :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-imageid>
                         imageId :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-instanceid>
                         instanceId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-instancemonitoring>
                         instanceMonitoring :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-instancetype>
                         instanceType :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-kernelid>
                         kernelId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-keyname>
                         keyName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-launchconfigurationname>
                         launchConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-metadataoptions>
                         metadataOptions :: (Prelude.Maybe MetadataOptionsProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-placementtenancy>
                         placementTenancy :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-ramdiskid>
                         ramDiskId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-securitygroups>
                         securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-spotprice>
                         spotPrice :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-launchconfiguration.html#cfn-autoscaling-launchconfiguration-userdata>
                         userData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchConfiguration ::
  Value Prelude.Text -> Value Prelude.Text -> LaunchConfiguration
mkLaunchConfiguration imageId instanceType
  = LaunchConfiguration
      {haddock_workaround_ = (), imageId = imageId,
       instanceType = instanceType,
       associatePublicIpAddress = Prelude.Nothing,
       blockDeviceMappings = Prelude.Nothing,
       classicLinkVPCId = Prelude.Nothing,
       classicLinkVPCSecurityGroups = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing,
       iamInstanceProfile = Prelude.Nothing, instanceId = Prelude.Nothing,
       instanceMonitoring = Prelude.Nothing, kernelId = Prelude.Nothing,
       keyName = Prelude.Nothing,
       launchConfigurationName = Prelude.Nothing,
       metadataOptions = Prelude.Nothing,
       placementTenancy = Prelude.Nothing, ramDiskId = Prelude.Nothing,
       securityGroups = Prelude.Nothing, spotPrice = Prelude.Nothing,
       userData = Prelude.Nothing}
instance ToResourceProperties LaunchConfiguration where
  toResourceProperties LaunchConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::LaunchConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociatePublicIpAddress"
                                 Prelude.<$> associatePublicIpAddress,
                               (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                               (JSON..=) "ClassicLinkVPCId" Prelude.<$> classicLinkVPCId,
                               (JSON..=) "ClassicLinkVPCSecurityGroups"
                                 Prelude.<$> classicLinkVPCSecurityGroups,
                               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                               (JSON..=) "InstanceId" Prelude.<$> instanceId,
                               (JSON..=) "InstanceMonitoring" Prelude.<$> instanceMonitoring,
                               (JSON..=) "KernelId" Prelude.<$> kernelId,
                               (JSON..=) "KeyName" Prelude.<$> keyName,
                               (JSON..=) "LaunchConfigurationName"
                                 Prelude.<$> launchConfigurationName,
                               (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                               (JSON..=) "PlacementTenancy" Prelude.<$> placementTenancy,
                               (JSON..=) "RamDiskId" Prelude.<$> ramDiskId,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                               (JSON..=) "UserData" Prelude.<$> userData]))}
instance JSON.ToJSON LaunchConfiguration where
  toJSON LaunchConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "AssociatePublicIpAddress"
                    Prelude.<$> associatePublicIpAddress,
                  (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                  (JSON..=) "ClassicLinkVPCId" Prelude.<$> classicLinkVPCId,
                  (JSON..=) "ClassicLinkVPCSecurityGroups"
                    Prelude.<$> classicLinkVPCSecurityGroups,
                  (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                  (JSON..=) "InstanceId" Prelude.<$> instanceId,
                  (JSON..=) "InstanceMonitoring" Prelude.<$> instanceMonitoring,
                  (JSON..=) "KernelId" Prelude.<$> kernelId,
                  (JSON..=) "KeyName" Prelude.<$> keyName,
                  (JSON..=) "LaunchConfigurationName"
                    Prelude.<$> launchConfigurationName,
                  (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                  (JSON..=) "PlacementTenancy" Prelude.<$> placementTenancy,
                  (JSON..=) "RamDiskId" Prelude.<$> ramDiskId,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                  (JSON..=) "UserData" Prelude.<$> userData])))
instance Property "AssociatePublicIpAddress" LaunchConfiguration where
  type PropertyType "AssociatePublicIpAddress" LaunchConfiguration = Value Prelude.Bool
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {associatePublicIpAddress = Prelude.pure newValue, ..}
instance Property "BlockDeviceMappings" LaunchConfiguration where
  type PropertyType "BlockDeviceMappings" LaunchConfiguration = [BlockDeviceMappingProperty]
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "ClassicLinkVPCId" LaunchConfiguration where
  type PropertyType "ClassicLinkVPCId" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {classicLinkVPCId = Prelude.pure newValue, ..}
instance Property "ClassicLinkVPCSecurityGroups" LaunchConfiguration where
  type PropertyType "ClassicLinkVPCSecurityGroups" LaunchConfiguration = ValueList Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {classicLinkVPCSecurityGroups = Prelude.pure newValue, ..}
instance Property "EbsOptimized" LaunchConfiguration where
  type PropertyType "EbsOptimized" LaunchConfiguration = Value Prelude.Bool
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {ebsOptimized = Prelude.pure newValue, ..}
instance Property "IamInstanceProfile" LaunchConfiguration where
  type PropertyType "IamInstanceProfile" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {iamInstanceProfile = Prelude.pure newValue, ..}
instance Property "ImageId" LaunchConfiguration where
  type PropertyType "ImageId" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {imageId = newValue, ..}
instance Property "InstanceId" LaunchConfiguration where
  type PropertyType "InstanceId" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {instanceId = Prelude.pure newValue, ..}
instance Property "InstanceMonitoring" LaunchConfiguration where
  type PropertyType "InstanceMonitoring" LaunchConfiguration = Value Prelude.Bool
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {instanceMonitoring = Prelude.pure newValue, ..}
instance Property "InstanceType" LaunchConfiguration where
  type PropertyType "InstanceType" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {instanceType = newValue, ..}
instance Property "KernelId" LaunchConfiguration where
  type PropertyType "KernelId" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {kernelId = Prelude.pure newValue, ..}
instance Property "KeyName" LaunchConfiguration where
  type PropertyType "KeyName" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {keyName = Prelude.pure newValue, ..}
instance Property "LaunchConfigurationName" LaunchConfiguration where
  type PropertyType "LaunchConfigurationName" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {launchConfigurationName = Prelude.pure newValue, ..}
instance Property "MetadataOptions" LaunchConfiguration where
  type PropertyType "MetadataOptions" LaunchConfiguration = MetadataOptionsProperty
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {metadataOptions = Prelude.pure newValue, ..}
instance Property "PlacementTenancy" LaunchConfiguration where
  type PropertyType "PlacementTenancy" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration
        {placementTenancy = Prelude.pure newValue, ..}
instance Property "RamDiskId" LaunchConfiguration where
  type PropertyType "RamDiskId" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {ramDiskId = Prelude.pure newValue, ..}
instance Property "SecurityGroups" LaunchConfiguration where
  type PropertyType "SecurityGroups" LaunchConfiguration = ValueList Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {securityGroups = Prelude.pure newValue, ..}
instance Property "SpotPrice" LaunchConfiguration where
  type PropertyType "SpotPrice" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {spotPrice = Prelude.pure newValue, ..}
instance Property "UserData" LaunchConfiguration where
  type PropertyType "UserData" LaunchConfiguration = Value Prelude.Text
  set newValue LaunchConfiguration {..}
    = LaunchConfiguration {userData = Prelude.pure newValue, ..}