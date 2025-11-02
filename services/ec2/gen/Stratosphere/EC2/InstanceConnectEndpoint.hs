module Stratosphere.EC2.InstanceConnectEndpoint (
        InstanceConnectEndpoint(..), mkInstanceConnectEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InstanceConnectEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html>
    InstanceConnectEndpoint {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html#cfn-ec2-instanceconnectendpoint-clienttoken>
                             clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html#cfn-ec2-instanceconnectendpoint-preserveclientip>
                             preserveClientIp :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html#cfn-ec2-instanceconnectendpoint-securitygroupids>
                             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html#cfn-ec2-instanceconnectendpoint-subnetid>
                             subnetId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instanceconnectendpoint.html#cfn-ec2-instanceconnectendpoint-tags>
                             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceConnectEndpoint ::
  Value Prelude.Text -> InstanceConnectEndpoint
mkInstanceConnectEndpoint subnetId
  = InstanceConnectEndpoint
      {haddock_workaround_ = (), subnetId = subnetId,
       clientToken = Prelude.Nothing, preserveClientIp = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties InstanceConnectEndpoint where
  toResourceProperties InstanceConnectEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::InstanceConnectEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                               (JSON..=) "PreserveClientIp" Prelude.<$> preserveClientIp,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InstanceConnectEndpoint where
  toJSON InstanceConnectEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                  (JSON..=) "PreserveClientIp" Prelude.<$> preserveClientIp,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClientToken" InstanceConnectEndpoint where
  type PropertyType "ClientToken" InstanceConnectEndpoint = Value Prelude.Text
  set newValue InstanceConnectEndpoint {..}
    = InstanceConnectEndpoint {clientToken = Prelude.pure newValue, ..}
instance Property "PreserveClientIp" InstanceConnectEndpoint where
  type PropertyType "PreserveClientIp" InstanceConnectEndpoint = Value Prelude.Bool
  set newValue InstanceConnectEndpoint {..}
    = InstanceConnectEndpoint
        {preserveClientIp = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" InstanceConnectEndpoint where
  type PropertyType "SecurityGroupIds" InstanceConnectEndpoint = ValueList Prelude.Text
  set newValue InstanceConnectEndpoint {..}
    = InstanceConnectEndpoint
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetId" InstanceConnectEndpoint where
  type PropertyType "SubnetId" InstanceConnectEndpoint = Value Prelude.Text
  set newValue InstanceConnectEndpoint {..}
    = InstanceConnectEndpoint {subnetId = newValue, ..}
instance Property "Tags" InstanceConnectEndpoint where
  type PropertyType "Tags" InstanceConnectEndpoint = [Tag]
  set newValue InstanceConnectEndpoint {..}
    = InstanceConnectEndpoint {tags = Prelude.pure newValue, ..}