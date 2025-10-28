module Stratosphere.EC2.CapacityReservationFleet.InstanceTypeSpecificationProperty (
        InstanceTypeSpecificationProperty(..),
        mkInstanceTypeSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceTypeSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html>
    InstanceTypeSpecificationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-availabilityzone>
                                       availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-availabilityzoneid>
                                       availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-ebsoptimized>
                                       ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-instanceplatform>
                                       instancePlatform :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-instancetype>
                                       instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-priority>
                                       priority :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-instancetypespecification.html#cfn-ec2-capacityreservationfleet-instancetypespecification-weight>
                                       weight :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceTypeSpecificationProperty ::
  InstanceTypeSpecificationProperty
mkInstanceTypeSpecificationProperty
  = InstanceTypeSpecificationProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing, instancePlatform = Prelude.Nothing,
       instanceType = Prelude.Nothing, priority = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties InstanceTypeSpecificationProperty where
  toResourceProperties InstanceTypeSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservationFleet.InstanceTypeSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                            (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                            (JSON..=) "InstancePlatform" Prelude.<$> instancePlatform,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "Weight" Prelude.<$> weight])}
instance JSON.ToJSON InstanceTypeSpecificationProperty where
  toJSON InstanceTypeSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
               (JSON..=) "InstancePlatform" Prelude.<$> instancePlatform,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "Weight" Prelude.<$> weight]))
instance Property "AvailabilityZone" InstanceTypeSpecificationProperty where
  type PropertyType "AvailabilityZone" InstanceTypeSpecificationProperty = Value Prelude.Text
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneId" InstanceTypeSpecificationProperty where
  type PropertyType "AvailabilityZoneId" InstanceTypeSpecificationProperty = Value Prelude.Text
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {availabilityZoneId = Prelude.pure newValue, ..}
instance Property "EbsOptimized" InstanceTypeSpecificationProperty where
  type PropertyType "EbsOptimized" InstanceTypeSpecificationProperty = Value Prelude.Bool
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {ebsOptimized = Prelude.pure newValue, ..}
instance Property "InstancePlatform" InstanceTypeSpecificationProperty where
  type PropertyType "InstancePlatform" InstanceTypeSpecificationProperty = Value Prelude.Text
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {instancePlatform = Prelude.pure newValue, ..}
instance Property "InstanceType" InstanceTypeSpecificationProperty where
  type PropertyType "InstanceType" InstanceTypeSpecificationProperty = Value Prelude.Text
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "Priority" InstanceTypeSpecificationProperty where
  type PropertyType "Priority" InstanceTypeSpecificationProperty = Value Prelude.Integer
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {priority = Prelude.pure newValue, ..}
instance Property "Weight" InstanceTypeSpecificationProperty where
  type PropertyType "Weight" InstanceTypeSpecificationProperty = Value Prelude.Double
  set newValue InstanceTypeSpecificationProperty {..}
    = InstanceTypeSpecificationProperty
        {weight = Prelude.pure newValue, ..}