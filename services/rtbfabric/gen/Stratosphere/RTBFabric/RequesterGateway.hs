module Stratosphere.RTBFabric.RequesterGateway (
        RequesterGateway(..), mkRequesterGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RequesterGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html>
    RequesterGateway {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html#cfn-rtbfabric-requestergateway-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html#cfn-rtbfabric-requestergateway-securitygroupids>
                      securityGroupIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html#cfn-rtbfabric-requestergateway-subnetids>
                      subnetIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html#cfn-rtbfabric-requestergateway-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-requestergateway.html#cfn-rtbfabric-requestergateway-vpcid>
                      vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequesterGateway ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> RequesterGateway
mkRequesterGateway securityGroupIds subnetIds vpcId
  = RequesterGateway
      {haddock_workaround_ = (), securityGroupIds = securityGroupIds,
       subnetIds = subnetIds, vpcId = vpcId,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RequesterGateway where
  toResourceProperties RequesterGateway {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::RequesterGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RequesterGateway where
  toJSON RequesterGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" RequesterGateway where
  type PropertyType "Description" RequesterGateway = Value Prelude.Text
  set newValue RequesterGateway {..}
    = RequesterGateway {description = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" RequesterGateway where
  type PropertyType "SecurityGroupIds" RequesterGateway = ValueList Prelude.Text
  set newValue RequesterGateway {..}
    = RequesterGateway {securityGroupIds = newValue, ..}
instance Property "SubnetIds" RequesterGateway where
  type PropertyType "SubnetIds" RequesterGateway = ValueList Prelude.Text
  set newValue RequesterGateway {..}
    = RequesterGateway {subnetIds = newValue, ..}
instance Property "Tags" RequesterGateway where
  type PropertyType "Tags" RequesterGateway = [Tag]
  set newValue RequesterGateway {..}
    = RequesterGateway {tags = Prelude.pure newValue, ..}
instance Property "VpcId" RequesterGateway where
  type PropertyType "VpcId" RequesterGateway = Value Prelude.Text
  set newValue RequesterGateway {..}
    = RequesterGateway {vpcId = newValue, ..}