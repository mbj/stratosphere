module Stratosphere.GameLift.Fleet (
        module Exports, Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.AnywhereConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.CertificateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.IpPermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.LocationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.ResourceCreationLimitPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.RuntimeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.ScalingPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html>
    Fleet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-anywhereconfiguration>
           anywhereConfiguration :: (Prelude.Maybe AnywhereConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-applycapacity>
           applyCapacity :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-buildid>
           buildId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-certificateconfiguration>
           certificateConfiguration :: (Prelude.Maybe CertificateConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-computetype>
           computeType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2inboundpermissions>
           eC2InboundPermissions :: (Prelude.Maybe [IpPermissionProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2instancetype>
           eC2InstanceType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-fleettype>
           fleetType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-instancerolearn>
           instanceRoleARN :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-instancerolecredentialsprovider>
           instanceRoleCredentialsProvider :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-locations>
           locations :: (Prelude.Maybe [LocationConfigurationProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-metricgroups>
           metricGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-name>
           name :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-newgamesessionprotectionpolicy>
           newGameSessionProtectionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcawsaccountid>
           peerVpcAwsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcid>
           peerVpcId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-resourcecreationlimitpolicy>
           resourceCreationLimitPolicy :: (Prelude.Maybe ResourceCreationLimitPolicyProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-runtimeconfiguration>
           runtimeConfiguration :: (Prelude.Maybe RuntimeConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-scalingpolicies>
           scalingPolicies :: (Prelude.Maybe [ScalingPolicyProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-scriptid>
           scriptId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet :: Value Prelude.Text -> Fleet
mkFleet name
  = Fleet
      {haddock_workaround_ = (), name = name,
       anywhereConfiguration = Prelude.Nothing,
       applyCapacity = Prelude.Nothing, buildId = Prelude.Nothing,
       certificateConfiguration = Prelude.Nothing,
       computeType = Prelude.Nothing, description = Prelude.Nothing,
       eC2InboundPermissions = Prelude.Nothing,
       eC2InstanceType = Prelude.Nothing, fleetType = Prelude.Nothing,
       instanceRoleARN = Prelude.Nothing,
       instanceRoleCredentialsProvider = Prelude.Nothing,
       locations = Prelude.Nothing, metricGroups = Prelude.Nothing,
       newGameSessionProtectionPolicy = Prelude.Nothing,
       peerVpcAwsAccountId = Prelude.Nothing, peerVpcId = Prelude.Nothing,
       resourceCreationLimitPolicy = Prelude.Nothing,
       runtimeConfiguration = Prelude.Nothing,
       scalingPolicies = Prelude.Nothing, scriptId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AnywhereConfiguration"
                                 Prelude.<$> anywhereConfiguration,
                               (JSON..=) "ApplyCapacity" Prelude.<$> applyCapacity,
                               (JSON..=) "BuildId" Prelude.<$> buildId,
                               (JSON..=) "CertificateConfiguration"
                                 Prelude.<$> certificateConfiguration,
                               (JSON..=) "ComputeType" Prelude.<$> computeType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EC2InboundPermissions"
                                 Prelude.<$> eC2InboundPermissions,
                               (JSON..=) "EC2InstanceType" Prelude.<$> eC2InstanceType,
                               (JSON..=) "FleetType" Prelude.<$> fleetType,
                               (JSON..=) "InstanceRoleARN" Prelude.<$> instanceRoleARN,
                               (JSON..=) "InstanceRoleCredentialsProvider"
                                 Prelude.<$> instanceRoleCredentialsProvider,
                               (JSON..=) "Locations" Prelude.<$> locations,
                               (JSON..=) "MetricGroups" Prelude.<$> metricGroups,
                               (JSON..=) "NewGameSessionProtectionPolicy"
                                 Prelude.<$> newGameSessionProtectionPolicy,
                               (JSON..=) "PeerVpcAwsAccountId" Prelude.<$> peerVpcAwsAccountId,
                               (JSON..=) "PeerVpcId" Prelude.<$> peerVpcId,
                               (JSON..=) "ResourceCreationLimitPolicy"
                                 Prelude.<$> resourceCreationLimitPolicy,
                               (JSON..=) "RuntimeConfiguration" Prelude.<$> runtimeConfiguration,
                               (JSON..=) "ScalingPolicies" Prelude.<$> scalingPolicies,
                               (JSON..=) "ScriptId" Prelude.<$> scriptId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AnywhereConfiguration"
                    Prelude.<$> anywhereConfiguration,
                  (JSON..=) "ApplyCapacity" Prelude.<$> applyCapacity,
                  (JSON..=) "BuildId" Prelude.<$> buildId,
                  (JSON..=) "CertificateConfiguration"
                    Prelude.<$> certificateConfiguration,
                  (JSON..=) "ComputeType" Prelude.<$> computeType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EC2InboundPermissions"
                    Prelude.<$> eC2InboundPermissions,
                  (JSON..=) "EC2InstanceType" Prelude.<$> eC2InstanceType,
                  (JSON..=) "FleetType" Prelude.<$> fleetType,
                  (JSON..=) "InstanceRoleARN" Prelude.<$> instanceRoleARN,
                  (JSON..=) "InstanceRoleCredentialsProvider"
                    Prelude.<$> instanceRoleCredentialsProvider,
                  (JSON..=) "Locations" Prelude.<$> locations,
                  (JSON..=) "MetricGroups" Prelude.<$> metricGroups,
                  (JSON..=) "NewGameSessionProtectionPolicy"
                    Prelude.<$> newGameSessionProtectionPolicy,
                  (JSON..=) "PeerVpcAwsAccountId" Prelude.<$> peerVpcAwsAccountId,
                  (JSON..=) "PeerVpcId" Prelude.<$> peerVpcId,
                  (JSON..=) "ResourceCreationLimitPolicy"
                    Prelude.<$> resourceCreationLimitPolicy,
                  (JSON..=) "RuntimeConfiguration" Prelude.<$> runtimeConfiguration,
                  (JSON..=) "ScalingPolicies" Prelude.<$> scalingPolicies,
                  (JSON..=) "ScriptId" Prelude.<$> scriptId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnywhereConfiguration" Fleet where
  type PropertyType "AnywhereConfiguration" Fleet = AnywhereConfigurationProperty
  set newValue Fleet {..}
    = Fleet {anywhereConfiguration = Prelude.pure newValue, ..}
instance Property "ApplyCapacity" Fleet where
  type PropertyType "ApplyCapacity" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {applyCapacity = Prelude.pure newValue, ..}
instance Property "BuildId" Fleet where
  type PropertyType "BuildId" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {buildId = Prelude.pure newValue, ..}
instance Property "CertificateConfiguration" Fleet where
  type PropertyType "CertificateConfiguration" Fleet = CertificateConfigurationProperty
  set newValue Fleet {..}
    = Fleet {certificateConfiguration = Prelude.pure newValue, ..}
instance Property "ComputeType" Fleet where
  type PropertyType "ComputeType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {computeType = Prelude.pure newValue, ..}
instance Property "Description" Fleet where
  type PropertyType "Description" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {description = Prelude.pure newValue, ..}
instance Property "EC2InboundPermissions" Fleet where
  type PropertyType "EC2InboundPermissions" Fleet = [IpPermissionProperty]
  set newValue Fleet {..}
    = Fleet {eC2InboundPermissions = Prelude.pure newValue, ..}
instance Property "EC2InstanceType" Fleet where
  type PropertyType "EC2InstanceType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {eC2InstanceType = Prelude.pure newValue, ..}
instance Property "FleetType" Fleet where
  type PropertyType "FleetType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {fleetType = Prelude.pure newValue, ..}
instance Property "InstanceRoleARN" Fleet where
  type PropertyType "InstanceRoleARN" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {instanceRoleARN = Prelude.pure newValue, ..}
instance Property "InstanceRoleCredentialsProvider" Fleet where
  type PropertyType "InstanceRoleCredentialsProvider" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet
        {instanceRoleCredentialsProvider = Prelude.pure newValue, ..}
instance Property "Locations" Fleet where
  type PropertyType "Locations" Fleet = [LocationConfigurationProperty]
  set newValue Fleet {..}
    = Fleet {locations = Prelude.pure newValue, ..}
instance Property "MetricGroups" Fleet where
  type PropertyType "MetricGroups" Fleet = ValueList Prelude.Text
  set newValue Fleet {..}
    = Fleet {metricGroups = Prelude.pure newValue, ..}
instance Property "Name" Fleet where
  type PropertyType "Name" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {name = newValue, ..}
instance Property "NewGameSessionProtectionPolicy" Fleet where
  type PropertyType "NewGameSessionProtectionPolicy" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet
        {newGameSessionProtectionPolicy = Prelude.pure newValue, ..}
instance Property "PeerVpcAwsAccountId" Fleet where
  type PropertyType "PeerVpcAwsAccountId" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {peerVpcAwsAccountId = Prelude.pure newValue, ..}
instance Property "PeerVpcId" Fleet where
  type PropertyType "PeerVpcId" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {peerVpcId = Prelude.pure newValue, ..}
instance Property "ResourceCreationLimitPolicy" Fleet where
  type PropertyType "ResourceCreationLimitPolicy" Fleet = ResourceCreationLimitPolicyProperty
  set newValue Fleet {..}
    = Fleet {resourceCreationLimitPolicy = Prelude.pure newValue, ..}
instance Property "RuntimeConfiguration" Fleet where
  type PropertyType "RuntimeConfiguration" Fleet = RuntimeConfigurationProperty
  set newValue Fleet {..}
    = Fleet {runtimeConfiguration = Prelude.pure newValue, ..}
instance Property "ScalingPolicies" Fleet where
  type PropertyType "ScalingPolicies" Fleet = [ScalingPolicyProperty]
  set newValue Fleet {..}
    = Fleet {scalingPolicies = Prelude.pure newValue, ..}
instance Property "ScriptId" Fleet where
  type PropertyType "ScriptId" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {scriptId = Prelude.pure newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}