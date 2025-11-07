module Stratosphere.DataZone.Connection.PhysicalConnectionRequirementsProperty (
        PhysicalConnectionRequirementsProperty(..),
        mkPhysicalConnectionRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PhysicalConnectionRequirementsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-physicalconnectionrequirements.html>
    PhysicalConnectionRequirementsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-physicalconnectionrequirements.html#cfn-datazone-connection-physicalconnectionrequirements-availabilityzone>
                                            availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-physicalconnectionrequirements.html#cfn-datazone-connection-physicalconnectionrequirements-securitygroupidlist>
                                            securityGroupIdList :: (Prelude.Maybe (ValueList Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-physicalconnectionrequirements.html#cfn-datazone-connection-physicalconnectionrequirements-subnetid>
                                            subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-physicalconnectionrequirements.html#cfn-datazone-connection-physicalconnectionrequirements-subnetidlist>
                                            subnetIdList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhysicalConnectionRequirementsProperty ::
  PhysicalConnectionRequirementsProperty
mkPhysicalConnectionRequirementsProperty
  = PhysicalConnectionRequirementsProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       securityGroupIdList = Prelude.Nothing, subnetId = Prelude.Nothing,
       subnetIdList = Prelude.Nothing}
instance ToResourceProperties PhysicalConnectionRequirementsProperty where
  toResourceProperties PhysicalConnectionRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.PhysicalConnectionRequirements",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "SecurityGroupIdList" Prelude.<$> securityGroupIdList,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId,
                            (JSON..=) "SubnetIdList" Prelude.<$> subnetIdList])}
instance JSON.ToJSON PhysicalConnectionRequirementsProperty where
  toJSON PhysicalConnectionRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "SecurityGroupIdList" Prelude.<$> securityGroupIdList,
               (JSON..=) "SubnetId" Prelude.<$> subnetId,
               (JSON..=) "SubnetIdList" Prelude.<$> subnetIdList]))
instance Property "AvailabilityZone" PhysicalConnectionRequirementsProperty where
  type PropertyType "AvailabilityZone" PhysicalConnectionRequirementsProperty = Value Prelude.Text
  set newValue PhysicalConnectionRequirementsProperty {..}
    = PhysicalConnectionRequirementsProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "SecurityGroupIdList" PhysicalConnectionRequirementsProperty where
  type PropertyType "SecurityGroupIdList" PhysicalConnectionRequirementsProperty = ValueList Prelude.Text
  set newValue PhysicalConnectionRequirementsProperty {..}
    = PhysicalConnectionRequirementsProperty
        {securityGroupIdList = Prelude.pure newValue, ..}
instance Property "SubnetId" PhysicalConnectionRequirementsProperty where
  type PropertyType "SubnetId" PhysicalConnectionRequirementsProperty = Value Prelude.Text
  set newValue PhysicalConnectionRequirementsProperty {..}
    = PhysicalConnectionRequirementsProperty
        {subnetId = Prelude.pure newValue, ..}
instance Property "SubnetIdList" PhysicalConnectionRequirementsProperty where
  type PropertyType "SubnetIdList" PhysicalConnectionRequirementsProperty = ValueList Prelude.Text
  set newValue PhysicalConnectionRequirementsProperty {..}
    = PhysicalConnectionRequirementsProperty
        {subnetIdList = Prelude.pure newValue, ..}