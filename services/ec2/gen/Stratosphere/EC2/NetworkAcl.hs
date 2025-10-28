module Stratosphere.EC2.NetworkAcl (
        NetworkAcl(..), mkNetworkAcl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkAcl
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkacl.html>
    NetworkAcl {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkacl.html#cfn-ec2-networkacl-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkacl.html#cfn-ec2-networkacl-vpcid>
                vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAcl :: Value Prelude.Text -> NetworkAcl
mkNetworkAcl vpcId
  = NetworkAcl
      {haddock_workaround_ = (), vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties NetworkAcl where
  toResourceProperties NetworkAcl {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkAcl", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkAcl where
  toJSON NetworkAcl {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" NetworkAcl where
  type PropertyType "Tags" NetworkAcl = [Tag]
  set newValue NetworkAcl {..}
    = NetworkAcl {tags = Prelude.pure newValue, ..}
instance Property "VpcId" NetworkAcl where
  type PropertyType "VpcId" NetworkAcl = Value Prelude.Text
  set newValue NetworkAcl {..} = NetworkAcl {vpcId = newValue, ..}