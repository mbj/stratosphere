module Stratosphere.RedshiftServerless.Workgroup (
        module Exports, Workgroup(..), mkWorkgroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.ConfigParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.PerformanceTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.WorkgroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workgroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html>
    Workgroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-basecapacity>
               baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-configparameters>
               configParameters :: (Prelude.Maybe [ConfigParameterProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-enhancedvpcrouting>
               enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-maxcapacity>
               maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-namespacename>
               namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-port>
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-priceperformancetarget>
               pricePerformanceTarget :: (Prelude.Maybe PerformanceTargetProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-publiclyaccessible>
               publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-recoverypointid>
               recoveryPointId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-securitygroupids>
               securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-snapshotarn>
               snapshotArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-snapshotname>
               snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-snapshotowneraccount>
               snapshotOwnerAccount :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-subnetids>
               subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-trackname>
               trackName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-workgroup>
               workgroup :: (Prelude.Maybe WorkgroupProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-workgroupname>
               workgroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkgroup :: Value Prelude.Text -> Workgroup
mkWorkgroup workgroupName
  = Workgroup
      {haddock_workaround_ = (), workgroupName = workgroupName,
       baseCapacity = Prelude.Nothing, configParameters = Prelude.Nothing,
       enhancedVpcRouting = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, namespaceName = Prelude.Nothing,
       port = Prelude.Nothing, pricePerformanceTarget = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       recoveryPointId = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, snapshotArn = Prelude.Nothing,
       snapshotName = Prelude.Nothing,
       snapshotOwnerAccount = Prelude.Nothing,
       subnetIds = Prelude.Nothing, tags = Prelude.Nothing,
       trackName = Prelude.Nothing, workgroup = Prelude.Nothing}
instance ToResourceProperties Workgroup where
  toResourceProperties Workgroup {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["WorkgroupName" JSON..= workgroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                               (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                               (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PricePerformanceTarget"
                                 Prelude.<$> pricePerformanceTarget,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "RecoveryPointId" Prelude.<$> recoveryPointId,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SnapshotArn" Prelude.<$> snapshotArn,
                               (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                               (JSON..=) "SnapshotOwnerAccount" Prelude.<$> snapshotOwnerAccount,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrackName" Prelude.<$> trackName,
                               (JSON..=) "Workgroup" Prelude.<$> workgroup]))}
instance JSON.ToJSON Workgroup where
  toJSON Workgroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["WorkgroupName" JSON..= workgroupName]
              (Prelude.catMaybes
                 [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                  (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                  (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                  (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                  (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PricePerformanceTarget"
                    Prelude.<$> pricePerformanceTarget,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "RecoveryPointId" Prelude.<$> recoveryPointId,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SnapshotArn" Prelude.<$> snapshotArn,
                  (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                  (JSON..=) "SnapshotOwnerAccount" Prelude.<$> snapshotOwnerAccount,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrackName" Prelude.<$> trackName,
                  (JSON..=) "Workgroup" Prelude.<$> workgroup])))
instance Property "BaseCapacity" Workgroup where
  type PropertyType "BaseCapacity" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {baseCapacity = Prelude.pure newValue, ..}
instance Property "ConfigParameters" Workgroup where
  type PropertyType "ConfigParameters" Workgroup = [ConfigParameterProperty]
  set newValue Workgroup {..}
    = Workgroup {configParameters = Prelude.pure newValue, ..}
instance Property "EnhancedVpcRouting" Workgroup where
  type PropertyType "EnhancedVpcRouting" Workgroup = Value Prelude.Bool
  set newValue Workgroup {..}
    = Workgroup {enhancedVpcRouting = Prelude.pure newValue, ..}
instance Property "MaxCapacity" Workgroup where
  type PropertyType "MaxCapacity" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {maxCapacity = Prelude.pure newValue, ..}
instance Property "NamespaceName" Workgroup where
  type PropertyType "NamespaceName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {namespaceName = Prelude.pure newValue, ..}
instance Property "Port" Workgroup where
  type PropertyType "Port" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {port = Prelude.pure newValue, ..}
instance Property "PricePerformanceTarget" Workgroup where
  type PropertyType "PricePerformanceTarget" Workgroup = PerformanceTargetProperty
  set newValue Workgroup {..}
    = Workgroup {pricePerformanceTarget = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Workgroup where
  type PropertyType "PubliclyAccessible" Workgroup = Value Prelude.Bool
  set newValue Workgroup {..}
    = Workgroup {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "RecoveryPointId" Workgroup where
  type PropertyType "RecoveryPointId" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {recoveryPointId = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Workgroup where
  type PropertyType "SecurityGroupIds" Workgroup = ValueList Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SnapshotArn" Workgroup where
  type PropertyType "SnapshotArn" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {snapshotArn = Prelude.pure newValue, ..}
instance Property "SnapshotName" Workgroup where
  type PropertyType "SnapshotName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {snapshotName = Prelude.pure newValue, ..}
instance Property "SnapshotOwnerAccount" Workgroup where
  type PropertyType "SnapshotOwnerAccount" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {snapshotOwnerAccount = Prelude.pure newValue, ..}
instance Property "SubnetIds" Workgroup where
  type PropertyType "SubnetIds" Workgroup = ValueList Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Workgroup where
  type PropertyType "Tags" Workgroup = [Tag]
  set newValue Workgroup {..}
    = Workgroup {tags = Prelude.pure newValue, ..}
instance Property "TrackName" Workgroup where
  type PropertyType "TrackName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {trackName = Prelude.pure newValue, ..}
instance Property "Workgroup" Workgroup where
  type PropertyType "Workgroup" Workgroup = WorkgroupProperty
  set newValue Workgroup {..}
    = Workgroup {workgroup = Prelude.pure newValue, ..}
instance Property "WorkgroupName" Workgroup where
  type PropertyType "WorkgroupName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {workgroupName = newValue, ..}