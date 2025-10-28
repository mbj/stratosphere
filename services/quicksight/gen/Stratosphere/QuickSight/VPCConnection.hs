module Stratosphere.QuickSight.VPCConnection (
        VPCConnection(..), mkVPCConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPCConnection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html>
    VPCConnection {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-availabilitystatus>
                   availabilityStatus :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-awsaccountid>
                   awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-dnsresolvers>
                   dnsResolvers :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-name>
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-rolearn>
                   roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-securitygroupids>
                   securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-subnetids>
                   subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-vpcconnection.html#cfn-quicksight-vpcconnection-vpcconnectionid>
                   vPCConnectionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCConnection :: VPCConnection
mkVPCConnection
  = VPCConnection
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing,
       awsAccountId = Prelude.Nothing, dnsResolvers = Prelude.Nothing,
       name = Prelude.Nothing, roleArn = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing, vPCConnectionId = Prelude.Nothing}
instance ToResourceProperties VPCConnection where
  toResourceProperties VPCConnection {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::VPCConnection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus,
                            (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "DnsResolvers" Prelude.<$> dnsResolvers,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VPCConnectionId" Prelude.<$> vPCConnectionId])}
instance JSON.ToJSON VPCConnection where
  toJSON VPCConnection {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus,
               (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "DnsResolvers" Prelude.<$> dnsResolvers,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VPCConnectionId" Prelude.<$> vPCConnectionId]))
instance Property "AvailabilityStatus" VPCConnection where
  type PropertyType "AvailabilityStatus" VPCConnection = Value Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {availabilityStatus = Prelude.pure newValue, ..}
instance Property "AwsAccountId" VPCConnection where
  type PropertyType "AwsAccountId" VPCConnection = Value Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {awsAccountId = Prelude.pure newValue, ..}
instance Property "DnsResolvers" VPCConnection where
  type PropertyType "DnsResolvers" VPCConnection = ValueList Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {dnsResolvers = Prelude.pure newValue, ..}
instance Property "Name" VPCConnection where
  type PropertyType "Name" VPCConnection = Value Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {name = Prelude.pure newValue, ..}
instance Property "RoleArn" VPCConnection where
  type PropertyType "RoleArn" VPCConnection = Value Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {roleArn = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VPCConnection where
  type PropertyType "SecurityGroupIds" VPCConnection = ValueList Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VPCConnection where
  type PropertyType "SubnetIds" VPCConnection = ValueList Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" VPCConnection where
  type PropertyType "Tags" VPCConnection = [Tag]
  set newValue VPCConnection {..}
    = VPCConnection {tags = Prelude.pure newValue, ..}
instance Property "VPCConnectionId" VPCConnection where
  type PropertyType "VPCConnectionId" VPCConnection = Value Prelude.Text
  set newValue VPCConnection {..}
    = VPCConnection {vPCConnectionId = Prelude.pure newValue, ..}