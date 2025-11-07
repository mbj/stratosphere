module Stratosphere.PCAConnectorAD.Connector.VpcInformationProperty (
        VpcInformationProperty(..), mkVpcInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcInformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html>
    VpcInformationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html#cfn-pcaconnectorad-connector-vpcinformation-ipaddresstype>
                            ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html#cfn-pcaconnectorad-connector-vpcinformation-securitygroupids>
                            securityGroupIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcInformationProperty ::
  ValueList Prelude.Text -> VpcInformationProperty
mkVpcInformationProperty securityGroupIds
  = VpcInformationProperty
      {haddock_workaround_ = (), securityGroupIds = securityGroupIds,
       ipAddressType = Prelude.Nothing}
instance ToResourceProperties VpcInformationProperty where
  toResourceProperties VpcInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Connector.VpcInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupIds" JSON..= securityGroupIds]
                           (Prelude.catMaybes
                              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType]))}
instance JSON.ToJSON VpcInformationProperty where
  toJSON VpcInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds]
              (Prelude.catMaybes
                 [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType])))
instance Property "IpAddressType" VpcInformationProperty where
  type PropertyType "IpAddressType" VpcInformationProperty = Value Prelude.Text
  set newValue VpcInformationProperty {..}
    = VpcInformationProperty
        {ipAddressType = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VpcInformationProperty where
  type PropertyType "SecurityGroupIds" VpcInformationProperty = ValueList Prelude.Text
  set newValue VpcInformationProperty {..}
    = VpcInformationProperty {securityGroupIds = newValue, ..}