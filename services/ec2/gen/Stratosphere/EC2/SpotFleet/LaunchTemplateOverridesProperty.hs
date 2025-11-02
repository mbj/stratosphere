module Stratosphere.EC2.SpotFleet.LaunchTemplateOverridesProperty (
        module Exports, LaunchTemplateOverridesProperty(..),
        mkLaunchTemplateOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.InstanceRequirementsRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateOverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html>
    LaunchTemplateOverridesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-availabilityzone>
                                     availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-instancerequirements>
                                     instanceRequirements :: (Prelude.Maybe InstanceRequirementsRequestProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-instancetype>
                                     instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-priority>
                                     priority :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-spotprice>
                                     spotPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-subnetid>
                                     subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-weightedcapacity>
                                     weightedCapacity :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateOverridesProperty ::
  LaunchTemplateOverridesProperty
mkLaunchTemplateOverridesProperty
  = LaunchTemplateOverridesProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       instanceRequirements = Prelude.Nothing,
       instanceType = Prelude.Nothing, priority = Prelude.Nothing,
       spotPrice = Prelude.Nothing, subnetId = Prelude.Nothing,
       weightedCapacity = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateOverridesProperty where
  toResourceProperties LaunchTemplateOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.LaunchTemplateOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId,
                            (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])}
instance JSON.ToJSON LaunchTemplateOverridesProperty where
  toJSON LaunchTemplateOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
               (JSON..=) "SubnetId" Prelude.<$> subnetId,
               (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))
instance Property "AvailabilityZone" LaunchTemplateOverridesProperty where
  type PropertyType "AvailabilityZone" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "InstanceRequirements" LaunchTemplateOverridesProperty where
  type PropertyType "InstanceRequirements" LaunchTemplateOverridesProperty = InstanceRequirementsRequestProperty
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "InstanceType" LaunchTemplateOverridesProperty where
  type PropertyType "InstanceType" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "Priority" LaunchTemplateOverridesProperty where
  type PropertyType "Priority" LaunchTemplateOverridesProperty = Value Prelude.Double
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {priority = Prelude.pure newValue, ..}
instance Property "SpotPrice" LaunchTemplateOverridesProperty where
  type PropertyType "SpotPrice" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {spotPrice = Prelude.pure newValue, ..}
instance Property "SubnetId" LaunchTemplateOverridesProperty where
  type PropertyType "SubnetId" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {subnetId = Prelude.pure newValue, ..}
instance Property "WeightedCapacity" LaunchTemplateOverridesProperty where
  type PropertyType "WeightedCapacity" LaunchTemplateOverridesProperty = Value Prelude.Double
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {weightedCapacity = Prelude.pure newValue, ..}