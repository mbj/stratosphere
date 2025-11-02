module Stratosphere.DMS.ReplicationConfig.ComputeConfigProperty (
        ComputeConfigProperty(..), mkComputeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html>
    ComputeConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-availabilityzone>
                           availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-dnsnameservers>
                           dnsNameServers :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-kmskeyid>
                           kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-maxcapacityunits>
                           maxCapacityUnits :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-mincapacityunits>
                           minCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-multiaz>
                           multiAZ :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-preferredmaintenancewindow>
                           preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-replicationsubnetgroupid>
                           replicationSubnetGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-replicationconfig-computeconfig.html#cfn-dms-replicationconfig-computeconfig-vpcsecuritygroupids>
                           vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeConfigProperty ::
  Value Prelude.Integer -> ComputeConfigProperty
mkComputeConfigProperty maxCapacityUnits
  = ComputeConfigProperty
      {haddock_workaround_ = (), maxCapacityUnits = maxCapacityUnits,
       availabilityZone = Prelude.Nothing,
       dnsNameServers = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       minCapacityUnits = Prelude.Nothing, multiAZ = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       replicationSubnetGroupId = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties ComputeConfigProperty where
  toResourceProperties ComputeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationConfig.ComputeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxCapacityUnits" JSON..= maxCapacityUnits]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "DnsNameServers" Prelude.<$> dnsNameServers,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MinCapacityUnits" Prelude.<$> minCapacityUnits,
                               (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "ReplicationSubnetGroupId"
                                 Prelude.<$> replicationSubnetGroupId,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON ComputeConfigProperty where
  toJSON ComputeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxCapacityUnits" JSON..= maxCapacityUnits]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "DnsNameServers" Prelude.<$> dnsNameServers,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MinCapacityUnits" Prelude.<$> minCapacityUnits,
                  (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "ReplicationSubnetGroupId"
                    Prelude.<$> replicationSubnetGroupId,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "AvailabilityZone" ComputeConfigProperty where
  type PropertyType "AvailabilityZone" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "DnsNameServers" ComputeConfigProperty where
  type PropertyType "DnsNameServers" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {dnsNameServers = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ComputeConfigProperty where
  type PropertyType "KmsKeyId" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MaxCapacityUnits" ComputeConfigProperty where
  type PropertyType "MaxCapacityUnits" ComputeConfigProperty = Value Prelude.Integer
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {maxCapacityUnits = newValue, ..}
instance Property "MinCapacityUnits" ComputeConfigProperty where
  type PropertyType "MinCapacityUnits" ComputeConfigProperty = Value Prelude.Integer
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {minCapacityUnits = Prelude.pure newValue, ..}
instance Property "MultiAZ" ComputeConfigProperty where
  type PropertyType "MultiAZ" ComputeConfigProperty = Value Prelude.Bool
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {multiAZ = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" ComputeConfigProperty where
  type PropertyType "PreferredMaintenanceWindow" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "ReplicationSubnetGroupId" ComputeConfigProperty where
  type PropertyType "ReplicationSubnetGroupId" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {replicationSubnetGroupId = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" ComputeConfigProperty where
  type PropertyType "VpcSecurityGroupIds" ComputeConfigProperty = ValueList Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty
        {vpcSecurityGroupIds = Prelude.pure newValue, ..}