module Stratosphere.EC2.ClientVpnAuthorizationRule (
        ClientVpnAuthorizationRule(..), mkClientVpnAuthorizationRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientVpnAuthorizationRule
  = ClientVpnAuthorizationRule {accessGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                authorizeAllGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                clientVpnEndpointId :: (Value Prelude.Text),
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                targetNetworkCidr :: (Value Prelude.Text)}
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