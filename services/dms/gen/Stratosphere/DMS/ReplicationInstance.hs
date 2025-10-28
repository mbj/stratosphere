module Stratosphere.DMS.ReplicationInstance (
        ReplicationInstance(..), mkReplicationInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html>
    ReplicationInstance {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allocatedstorage>
                         allocatedStorage :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allowmajorversionupgrade>
                         allowMajorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-autominorversionupgrade>
                         autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-availabilityzone>
                         availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-engineversion>
                         engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-kmskeyid>
                         kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-multiaz>
                         multiAZ :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-networktype>
                         networkType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-preferredmaintenancewindow>
                         preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-publiclyaccessible>
                         publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceclass>
                         replicationInstanceClass :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceidentifier>
                         replicationInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationsubnetgroupidentifier>
                         replicationSubnetGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-resourceidentifier>
                         resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-vpcsecuritygroupids>
                         vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationInstance :: Value Prelude.Text -> ReplicationInstance
mkReplicationInstance replicationInstanceClass
  = ReplicationInstance
      {haddock_workaround_ = (),
       replicationInstanceClass = replicationInstanceClass,
       allocatedStorage = Prelude.Nothing,
       allowMajorVersionUpgrade = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       engineVersion = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       multiAZ = Prelude.Nothing, networkType = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       replicationInstanceIdentifier = Prelude.Nothing,
       replicationSubnetGroupIdentifier = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing, tags = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties ReplicationInstance where
  toResourceProperties ReplicationInstance {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReplicationInstanceClass" JSON..= replicationInstanceClass]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
                               (JSON..=) "AllowMajorVersionUpgrade"
                                 Prelude.<$> allowMajorVersionUpgrade,
                               (JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
                               (JSON..=) "NetworkType" Prelude.<$> networkType,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "ReplicationInstanceIdentifier"
                                 Prelude.<$> replicationInstanceIdentifier,
                               (JSON..=) "ReplicationSubnetGroupIdentifier"
                                 Prelude.<$> replicationSubnetGroupIdentifier,
                               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON ReplicationInstance where
  toJSON ReplicationInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReplicationInstanceClass" JSON..= replicationInstanceClass]
              (Prelude.catMaybes
                 [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
                  (JSON..=) "AllowMajorVersionUpgrade"
                    Prelude.<$> allowMajorVersionUpgrade,
                  (JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
                  (JSON..=) "NetworkType" Prelude.<$> networkType,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "ReplicationInstanceIdentifier"
                    Prelude.<$> replicationInstanceIdentifier,
                  (JSON..=) "ReplicationSubnetGroupIdentifier"
                    Prelude.<$> replicationSubnetGroupIdentifier,
                  (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "AllocatedStorage" ReplicationInstance where
  type PropertyType "AllocatedStorage" ReplicationInstance = Value Prelude.Integer
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {allocatedStorage = Prelude.pure newValue, ..}
instance Property "AllowMajorVersionUpgrade" ReplicationInstance where
  type PropertyType "AllowMajorVersionUpgrade" ReplicationInstance = Value Prelude.Bool
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {allowMajorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" ReplicationInstance where
  type PropertyType "AutoMinorVersionUpgrade" ReplicationInstance = Value Prelude.Bool
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" ReplicationInstance where
  type PropertyType "AvailabilityZone" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "EngineVersion" ReplicationInstance where
  type PropertyType "EngineVersion" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance {engineVersion = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ReplicationInstance where
  type PropertyType "KmsKeyId" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MultiAZ" ReplicationInstance where
  type PropertyType "MultiAZ" ReplicationInstance = Value Prelude.Bool
  set newValue ReplicationInstance {..}
    = ReplicationInstance {multiAZ = Prelude.pure newValue, ..}
instance Property "NetworkType" ReplicationInstance where
  type PropertyType "NetworkType" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance {networkType = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" ReplicationInstance where
  type PropertyType "PreferredMaintenanceWindow" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" ReplicationInstance where
  type PropertyType "PubliclyAccessible" ReplicationInstance = Value Prelude.Bool
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "ReplicationInstanceClass" ReplicationInstance where
  type PropertyType "ReplicationInstanceClass" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance {replicationInstanceClass = newValue, ..}
instance Property "ReplicationInstanceIdentifier" ReplicationInstance where
  type PropertyType "ReplicationInstanceIdentifier" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {replicationInstanceIdentifier = Prelude.pure newValue, ..}
instance Property "ReplicationSubnetGroupIdentifier" ReplicationInstance where
  type PropertyType "ReplicationSubnetGroupIdentifier" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {replicationSubnetGroupIdentifier = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ReplicationInstance where
  type PropertyType "ResourceIdentifier" ReplicationInstance = Value Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" ReplicationInstance where
  type PropertyType "Tags" ReplicationInstance = [Tag]
  set newValue ReplicationInstance {..}
    = ReplicationInstance {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" ReplicationInstance where
  type PropertyType "VpcSecurityGroupIds" ReplicationInstance = ValueList Prelude.Text
  set newValue ReplicationInstance {..}
    = ReplicationInstance
        {vpcSecurityGroupIds = Prelude.pure newValue, ..}