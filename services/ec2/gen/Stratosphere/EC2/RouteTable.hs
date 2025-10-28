module Stratosphere.EC2.RouteTable (
        RouteTable(..), mkRouteTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RouteTable
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html>
    RouteTable {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html#cfn-ec2-routetable-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html#cfn-ec2-routetable-vpcid>
                vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteTable :: Value Prelude.Text -> RouteTable
mkRouteTable vpcId
  = RouteTable
      {haddock_workaround_ = (), vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties RouteTable where
  toResourceProperties RouteTable {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteTable", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RouteTable where
  toJSON RouteTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" RouteTable where
  type PropertyType "Tags" RouteTable = [Tag]
  set newValue RouteTable {..}
    = RouteTable {tags = Prelude.pure newValue, ..}
instance Property "VpcId" RouteTable where
  type PropertyType "VpcId" RouteTable = Value Prelude.Text
  set newValue RouteTable {..} = RouteTable {vpcId = newValue, ..}