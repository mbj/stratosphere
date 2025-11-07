module Stratosphere.EC2.LocalGatewayVirtualInterfaceGroup (
        LocalGatewayVirtualInterfaceGroup(..),
        mkLocalGatewayVirtualInterfaceGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocalGatewayVirtualInterfaceGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterfacegroup.html>
    LocalGatewayVirtualInterfaceGroup {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterfacegroup.html#cfn-ec2-localgatewayvirtualinterfacegroup-localbgpasn>
                                       localBgpAsn :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterfacegroup.html#cfn-ec2-localgatewayvirtualinterfacegroup-localbgpasnextended>
                                       localBgpAsnExtended :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterfacegroup.html#cfn-ec2-localgatewayvirtualinterfacegroup-localgatewayid>
                                       localGatewayId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayvirtualinterfacegroup.html#cfn-ec2-localgatewayvirtualinterfacegroup-tags>
                                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalGatewayVirtualInterfaceGroup ::
  Value Prelude.Text -> LocalGatewayVirtualInterfaceGroup
mkLocalGatewayVirtualInterfaceGroup localGatewayId
  = LocalGatewayVirtualInterfaceGroup
      {haddock_workaround_ = (), localGatewayId = localGatewayId,
       localBgpAsn = Prelude.Nothing,
       localBgpAsnExtended = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LocalGatewayVirtualInterfaceGroup where
  toResourceProperties LocalGatewayVirtualInterfaceGroup {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LocalGatewayVirtualInterfaceGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalGatewayId" JSON..= localGatewayId]
                           (Prelude.catMaybes
                              [(JSON..=) "LocalBgpAsn" Prelude.<$> localBgpAsn,
                               (JSON..=) "LocalBgpAsnExtended" Prelude.<$> localBgpAsnExtended,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocalGatewayVirtualInterfaceGroup where
  toJSON LocalGatewayVirtualInterfaceGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalGatewayId" JSON..= localGatewayId]
              (Prelude.catMaybes
                 [(JSON..=) "LocalBgpAsn" Prelude.<$> localBgpAsn,
                  (JSON..=) "LocalBgpAsnExtended" Prelude.<$> localBgpAsnExtended,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocalBgpAsn" LocalGatewayVirtualInterfaceGroup where
  type PropertyType "LocalBgpAsn" LocalGatewayVirtualInterfaceGroup = Value Prelude.Integer
  set newValue LocalGatewayVirtualInterfaceGroup {..}
    = LocalGatewayVirtualInterfaceGroup
        {localBgpAsn = Prelude.pure newValue, ..}
instance Property "LocalBgpAsnExtended" LocalGatewayVirtualInterfaceGroup where
  type PropertyType "LocalBgpAsnExtended" LocalGatewayVirtualInterfaceGroup = Value Prelude.Integer
  set newValue LocalGatewayVirtualInterfaceGroup {..}
    = LocalGatewayVirtualInterfaceGroup
        {localBgpAsnExtended = Prelude.pure newValue, ..}
instance Property "LocalGatewayId" LocalGatewayVirtualInterfaceGroup where
  type PropertyType "LocalGatewayId" LocalGatewayVirtualInterfaceGroup = Value Prelude.Text
  set newValue LocalGatewayVirtualInterfaceGroup {..}
    = LocalGatewayVirtualInterfaceGroup {localGatewayId = newValue, ..}
instance Property "Tags" LocalGatewayVirtualInterfaceGroup where
  type PropertyType "Tags" LocalGatewayVirtualInterfaceGroup = [Tag]
  set newValue LocalGatewayVirtualInterfaceGroup {..}
    = LocalGatewayVirtualInterfaceGroup
        {tags = Prelude.pure newValue, ..}