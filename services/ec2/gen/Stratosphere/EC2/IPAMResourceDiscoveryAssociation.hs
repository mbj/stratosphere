module Stratosphere.EC2.IPAMResourceDiscoveryAssociation (
        IPAMResourceDiscoveryAssociation(..),
        mkIPAMResourceDiscoveryAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAMResourceDiscoveryAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscoveryassociation.html>
    IPAMResourceDiscoveryAssociation {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscoveryassociation.html#cfn-ec2-ipamresourcediscoveryassociation-ipamid>
                                      ipamId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscoveryassociation.html#cfn-ec2-ipamresourcediscoveryassociation-ipamresourcediscoveryid>
                                      ipamResourceDiscoveryId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamresourcediscoveryassociation.html#cfn-ec2-ipamresourcediscoveryassociation-tags>
                                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPAMResourceDiscoveryAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> IPAMResourceDiscoveryAssociation
mkIPAMResourceDiscoveryAssociation ipamId ipamResourceDiscoveryId
  = IPAMResourceDiscoveryAssociation
      {haddock_workaround_ = (), ipamId = ipamId,
       ipamResourceDiscoveryId = ipamResourceDiscoveryId,
       tags = Prelude.Nothing}
instance ToResourceProperties IPAMResourceDiscoveryAssociation where
  toResourceProperties IPAMResourceDiscoveryAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMResourceDiscoveryAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpamId" JSON..= ipamId,
                            "IpamResourceDiscoveryId" JSON..= ipamResourceDiscoveryId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPAMResourceDiscoveryAssociation where
  toJSON IPAMResourceDiscoveryAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpamId" JSON..= ipamId,
               "IpamResourceDiscoveryId" JSON..= ipamResourceDiscoveryId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IpamId" IPAMResourceDiscoveryAssociation where
  type PropertyType "IpamId" IPAMResourceDiscoveryAssociation = Value Prelude.Text
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation {ipamId = newValue, ..}
instance Property "IpamResourceDiscoveryId" IPAMResourceDiscoveryAssociation where
  type PropertyType "IpamResourceDiscoveryId" IPAMResourceDiscoveryAssociation = Value Prelude.Text
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation
        {ipamResourceDiscoveryId = newValue, ..}
instance Property "Tags" IPAMResourceDiscoveryAssociation where
  type PropertyType "Tags" IPAMResourceDiscoveryAssociation = [Tag]
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation
        {tags = Prelude.pure newValue, ..}