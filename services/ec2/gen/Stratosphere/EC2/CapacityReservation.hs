module Stratosphere.EC2.CapacityReservation (
        module Exports, CapacityReservation(..), mkCapacityReservation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.CapacityReservation.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html>
    CapacityReservation {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-availabilityzone>
                         availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-availabilityzoneid>
                         availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ebsoptimized>
                         ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddate>
                         endDate :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddatetype>
                         endDateType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ephemeralstorage>
                         ephemeralStorage :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancecount>
                         instanceCount :: (Value Prelude.Integer),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancematchcriteria>
                         instanceMatchCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instanceplatform>
                         instancePlatform :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancetype>
                         instanceType :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-outpostarn>
                         outPostArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-placementgrouparn>
                         placementGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tagspecifications>
                         tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tenancy>
                         tenancy :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-unusedreservationbillingownerid>
                         unusedReservationBillingOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservation ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Text -> CapacityReservation
mkCapacityReservation instanceCount instancePlatform instanceType
  = CapacityReservation
      {haddock_workaround_ = (), instanceCount = instanceCount,
       instancePlatform = instancePlatform, instanceType = instanceType,
       availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing, endDate = Prelude.Nothing,
       endDateType = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
       instanceMatchCriteria = Prelude.Nothing,
       outPostArn = Prelude.Nothing, placementGroupArn = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, tenancy = Prelude.Nothing,
       unusedReservationBillingOwnerId = Prelude.Nothing}
instance ToResourceProperties CapacityReservation where
  toResourceProperties CapacityReservation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceCount" JSON..= instanceCount,
                            "InstancePlatform" JSON..= instancePlatform,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "EndDate" Prelude.<$> endDate,
                               (JSON..=) "EndDateType" Prelude.<$> endDateType,
                               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                               (JSON..=) "InstanceMatchCriteria"
                                 Prelude.<$> instanceMatchCriteria,
                               (JSON..=) "OutPostArn" Prelude.<$> outPostArn,
                               (JSON..=) "PlacementGroupArn" Prelude.<$> placementGroupArn,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "Tenancy" Prelude.<$> tenancy,
                               (JSON..=) "UnusedReservationBillingOwnerId"
                                 Prelude.<$> unusedReservationBillingOwnerId]))}
instance JSON.ToJSON CapacityReservation where
  toJSON CapacityReservation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceCount" JSON..= instanceCount,
               "InstancePlatform" JSON..= instancePlatform,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                  (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "EndDate" Prelude.<$> endDate,
                  (JSON..=) "EndDateType" Prelude.<$> endDateType,
                  (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                  (JSON..=) "InstanceMatchCriteria"
                    Prelude.<$> instanceMatchCriteria,
                  (JSON..=) "OutPostArn" Prelude.<$> outPostArn,
                  (JSON..=) "PlacementGroupArn" Prelude.<$> placementGroupArn,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "Tenancy" Prelude.<$> tenancy,
                  (JSON..=) "UnusedReservationBillingOwnerId"
                    Prelude.<$> unusedReservationBillingOwnerId])))
instance Property "AvailabilityZone" CapacityReservation where
  type PropertyType "AvailabilityZone" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneId" CapacityReservation where
  type PropertyType "AvailabilityZoneId" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {availabilityZoneId = Prelude.pure newValue, ..}
instance Property "EbsOptimized" CapacityReservation where
  type PropertyType "EbsOptimized" CapacityReservation = Value Prelude.Bool
  set newValue CapacityReservation {..}
    = CapacityReservation {ebsOptimized = Prelude.pure newValue, ..}
instance Property "EndDate" CapacityReservation where
  type PropertyType "EndDate" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {endDate = Prelude.pure newValue, ..}
instance Property "EndDateType" CapacityReservation where
  type PropertyType "EndDateType" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {endDateType = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" CapacityReservation where
  type PropertyType "EphemeralStorage" CapacityReservation = Value Prelude.Bool
  set newValue CapacityReservation {..}
    = CapacityReservation
        {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "InstanceCount" CapacityReservation where
  type PropertyType "InstanceCount" CapacityReservation = Value Prelude.Integer
  set newValue CapacityReservation {..}
    = CapacityReservation {instanceCount = newValue, ..}
instance Property "InstanceMatchCriteria" CapacityReservation where
  type PropertyType "InstanceMatchCriteria" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {instanceMatchCriteria = Prelude.pure newValue, ..}
instance Property "InstancePlatform" CapacityReservation where
  type PropertyType "InstancePlatform" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {instancePlatform = newValue, ..}
instance Property "InstanceType" CapacityReservation where
  type PropertyType "InstanceType" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {instanceType = newValue, ..}
instance Property "OutPostArn" CapacityReservation where
  type PropertyType "OutPostArn" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {outPostArn = Prelude.pure newValue, ..}
instance Property "PlacementGroupArn" CapacityReservation where
  type PropertyType "PlacementGroupArn" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {placementGroupArn = Prelude.pure newValue, ..}
instance Property "TagSpecifications" CapacityReservation where
  type PropertyType "TagSpecifications" CapacityReservation = [TagSpecificationProperty]
  set newValue CapacityReservation {..}
    = CapacityReservation
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Tenancy" CapacityReservation where
  type PropertyType "Tenancy" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {tenancy = Prelude.pure newValue, ..}
instance Property "UnusedReservationBillingOwnerId" CapacityReservation where
  type PropertyType "UnusedReservationBillingOwnerId" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {unusedReservationBillingOwnerId = Prelude.pure newValue, ..}