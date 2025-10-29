module Stratosphere.EC2.ClientVpnAuthorizationRule (
        ClientVpnAuthorizationRule(..), mkClientVpnAuthorizationRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientVpnAuthorizationRule
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html>
    ClientVpnAuthorizationRule {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-accessgroupid>
                                accessGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-authorizeallgroups>
                                authorizeAllGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-clientvpnendpointid>
                                clientVpnEndpointId :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-description>
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-targetnetworkcidr>
                                targetNetworkCidr :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientVpnAuthorizationRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClientVpnAuthorizationRule
mkClientVpnAuthorizationRule clientVpnEndpointId targetNetworkCidr
  = ClientVpnAuthorizationRule
      {clientVpnEndpointId = clientVpnEndpointId,
       targetNetworkCidr = targetNetworkCidr,
       accessGroupId = Prelude.Nothing,
       authorizeAllGroups = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties ClientVpnAuthorizationRule where
  toResourceProperties ClientVpnAuthorizationRule {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnAuthorizationRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
                            "TargetNetworkCidr" JSON..= targetNetworkCidr]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessGroupId" Prelude.<$> accessGroupId,
                               (JSON..=) "AuthorizeAllGroups" Prelude.<$> authorizeAllGroups,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ClientVpnAuthorizationRule where
  toJSON ClientVpnAuthorizationRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientVpnEndpointId" JSON..= clientVpnEndpointId,
               "TargetNetworkCidr" JSON..= targetNetworkCidr]
              (Prelude.catMaybes
                 [(JSON..=) "AccessGroupId" Prelude.<$> accessGroupId,
                  (JSON..=) "AuthorizeAllGroups" Prelude.<$> authorizeAllGroups,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AccessGroupId" ClientVpnAuthorizationRule where
  type PropertyType "AccessGroupId" ClientVpnAuthorizationRule = Value Prelude.Text
  set newValue ClientVpnAuthorizationRule {..}
    = ClientVpnAuthorizationRule
        {accessGroupId = Prelude.pure newValue, ..}
instance Property "AuthorizeAllGroups" ClientVpnAuthorizationRule where
  type PropertyType "AuthorizeAllGroups" ClientVpnAuthorizationRule = Value Prelude.Bool
  set newValue ClientVpnAuthorizationRule {..}
    = ClientVpnAuthorizationRule
        {authorizeAllGroups = Prelude.pure newValue, ..}
instance Property "ClientVpnEndpointId" ClientVpnAuthorizationRule where
  type PropertyType "ClientVpnEndpointId" ClientVpnAuthorizationRule = Value Prelude.Text
  set newValue ClientVpnAuthorizationRule {..}
    = ClientVpnAuthorizationRule {clientVpnEndpointId = newValue, ..}
instance Property "Description" ClientVpnAuthorizationRule where
  type PropertyType "Description" ClientVpnAuthorizationRule = Value Prelude.Text
  set newValue ClientVpnAuthorizationRule {..}
    = ClientVpnAuthorizationRule
        {description = Prelude.pure newValue, ..}
instance Property "TargetNetworkCidr" ClientVpnAuthorizationRule where
  type PropertyType "TargetNetworkCidr" ClientVpnAuthorizationRule = Value Prelude.Text
  set newValue ClientVpnAuthorizationRule {..}
    = ClientVpnAuthorizationRule {targetNetworkCidr = newValue, ..}