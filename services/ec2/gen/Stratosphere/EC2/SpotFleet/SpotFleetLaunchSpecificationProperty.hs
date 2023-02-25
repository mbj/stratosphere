module Stratosphere.EC2.SpotFleet.SpotFleetLaunchSpecificationProperty (
        module Exports, SpotFleetLaunchSpecificationProperty(..),
        mkSpotFleetLaunchSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.GroupIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.IamInstanceProfileSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.InstanceNetworkInterfaceSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.InstanceRequirementsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetMonitoringProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetTagSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotPlacementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotFleetLaunchSpecificationProperty
  = SpotFleetLaunchSpecificationProperty {blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
                                          ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                                          iamInstanceProfile :: (Prelude.Maybe IamInstanceProfileSpecificationProperty),
                                          imageId :: (Value Prelude.Text),
                                          instanceRequirements :: (Prelude.Maybe InstanceRequirementsRequestProperty),
                                          instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                          kernelId :: (Prelude.Maybe (Value Prelude.Text)),
                                          keyName :: (Prelude.Maybe (Value Prelude.Text)),
                                          monitoring :: (Prelude.Maybe SpotFleetMonitoringProperty),
                                          networkInterfaces :: (Prelude.Maybe [InstanceNetworkInterfaceSpecificationProperty]),
                                          placement :: (Prelude.Maybe SpotPlacementProperty),
                                          ramdiskId :: (Prelude.Maybe (Value Prelude.Text)),
                                          securityGroups :: (Prelude.Maybe [GroupIdentifierProperty]),
                                          spotPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                          subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                          tagSpecifications :: (Prelude.Maybe [SpotFleetTagSpecificationProperty]),
                                          userData :: (Prelude.Maybe (Value Prelude.Text)),
                                          weightedCapacity :: (Prelude.Maybe (Value Prelude.Double))}
mkSpotFleetLaunchSpecificationProperty ::
  Value Prelude.Text -> SpotFleetLaunchSpecificationProperty
mkSpotFleetLaunchSpecificationProperty imageId
  = SpotFleetLaunchSpecificationProperty
      {imageId = imageId, blockDeviceMappings = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing,
       iamInstanceProfile = Prelude.Nothing,
       instanceRequirements = Prelude.Nothing,
       instanceType = Prelude.Nothing, kernelId = Prelude.Nothing,
       keyName = Prelude.Nothing, monitoring = Prelude.Nothing,
       networkInterfaces = Prelude.Nothing, placement = Prelude.Nothing,
       ramdiskId = Prelude.Nothing, securityGroups = Prelude.Nothing,
       spotPrice = Prelude.Nothing, subnetId = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, userData = Prelude.Nothing,
       weightedCapacity = Prelude.Nothing}
instance ToResourceProperties SpotFleetLaunchSpecificationProperty where
  toResourceProperties SpotFleetLaunchSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetLaunchSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageId" JSON..= imageId]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                               (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "KernelId" Prelude.<$> kernelId,
                               (JSON..=) "KeyName" Prelude.<$> keyName,
                               (JSON..=) "Monitoring" Prelude.<$> monitoring,
                               (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                               (JSON..=) "Placement" Prelude.<$> placement,
                               (JSON..=) "RamdiskId" Prelude.<$> ramdiskId,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "UserData" Prelude.<$> userData,
                               (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))}
instance JSON.ToJSON SpotFleetLaunchSpecificationProperty where
  toJSON SpotFleetLaunchSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageId" JSON..= imageId]
              (Prelude.catMaybes
                 [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                  (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                  (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "KernelId" Prelude.<$> kernelId,
                  (JSON..=) "KeyName" Prelude.<$> keyName,
                  (JSON..=) "Monitoring" Prelude.<$> monitoring,
                  (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                  (JSON..=) "Placement" Prelude.<$> placement,
                  (JSON..=) "RamdiskId" Prelude.<$> ramdiskId,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "UserData" Prelude.<$> userData,
                  (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])))
instance Property "BlockDeviceMappings" SpotFleetLaunchSpecificationProperty where
  type PropertyType "BlockDeviceMappings" SpotFleetLaunchSpecificationProperty = [BlockDeviceMappingProperty]
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "EbsOptimized" SpotFleetLaunchSpecificationProperty where
  type PropertyType "EbsOptimized" SpotFleetLaunchSpecificationProperty = Value Prelude.Bool
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {ebsOptimized = Prelude.pure newValue, ..}
instance Property "IamInstanceProfile" SpotFleetLaunchSpecificationProperty where
  type PropertyType "IamInstanceProfile" SpotFleetLaunchSpecificationProperty = IamInstanceProfileSpecificationProperty
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {iamInstanceProfile = Prelude.pure newValue, ..}
instance Property "ImageId" SpotFleetLaunchSpecificationProperty where
  type PropertyType "ImageId" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty {imageId = newValue, ..}
instance Property "InstanceRequirements" SpotFleetLaunchSpecificationProperty where
  type PropertyType "InstanceRequirements" SpotFleetLaunchSpecificationProperty = InstanceRequirementsRequestProperty
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "InstanceType" SpotFleetLaunchSpecificationProperty where
  type PropertyType "InstanceType" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "KernelId" SpotFleetLaunchSpecificationProperty where
  type PropertyType "KernelId" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {kernelId = Prelude.pure newValue, ..}
instance Property "KeyName" SpotFleetLaunchSpecificationProperty where
  type PropertyType "KeyName" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {keyName = Prelude.pure newValue, ..}
instance Property "Monitoring" SpotFleetLaunchSpecificationProperty where
  type PropertyType "Monitoring" SpotFleetLaunchSpecificationProperty = SpotFleetMonitoringProperty
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {monitoring = Prelude.pure newValue, ..}
instance Property "NetworkInterfaces" SpotFleetLaunchSpecificationProperty where
  type PropertyType "NetworkInterfaces" SpotFleetLaunchSpecificationProperty = [InstanceNetworkInterfaceSpecificationProperty]
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {networkInterfaces = Prelude.pure newValue, ..}
instance Property "Placement" SpotFleetLaunchSpecificationProperty where
  type PropertyType "Placement" SpotFleetLaunchSpecificationProperty = SpotPlacementProperty
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {placement = Prelude.pure newValue, ..}
instance Property "RamdiskId" SpotFleetLaunchSpecificationProperty where
  type PropertyType "RamdiskId" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {ramdiskId = Prelude.pure newValue, ..}
instance Property "SecurityGroups" SpotFleetLaunchSpecificationProperty where
  type PropertyType "SecurityGroups" SpotFleetLaunchSpecificationProperty = [GroupIdentifierProperty]
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "SpotPrice" SpotFleetLaunchSpecificationProperty where
  type PropertyType "SpotPrice" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {spotPrice = Prelude.pure newValue, ..}
instance Property "SubnetId" SpotFleetLaunchSpecificationProperty where
  type PropertyType "SubnetId" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {subnetId = Prelude.pure newValue, ..}
instance Property "TagSpecifications" SpotFleetLaunchSpecificationProperty where
  type PropertyType "TagSpecifications" SpotFleetLaunchSpecificationProperty = [SpotFleetTagSpecificationProperty]
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "UserData" SpotFleetLaunchSpecificationProperty where
  type PropertyType "UserData" SpotFleetLaunchSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {userData = Prelude.pure newValue, ..}
instance Property "WeightedCapacity" SpotFleetLaunchSpecificationProperty where
  type PropertyType "WeightedCapacity" SpotFleetLaunchSpecificationProperty = Value Prelude.Double
  set newValue SpotFleetLaunchSpecificationProperty {..}
    = SpotFleetLaunchSpecificationProperty
        {weightedCapacity = Prelude.pure newValue, ..}