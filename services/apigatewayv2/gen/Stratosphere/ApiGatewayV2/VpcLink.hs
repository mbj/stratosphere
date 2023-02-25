module Stratosphere.ApiGatewayV2.VpcLink (
        VpcLink(..), mkVpcLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcLink
  = VpcLink {name :: (Value Prelude.Text),
             securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
             subnetIds :: (ValueList (Value Prelude.Text)),
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkVpcLink ::
  Value Prelude.Text -> ValueList (Value Prelude.Text) -> VpcLink
mkVpcLink name subnetIds
  = VpcLink
      {name = name, subnetIds = subnetIds,
       securityGroupIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VpcLink where
  toResourceProperties VpcLink {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::VpcLink",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcLink where
  toJSON VpcLink {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" VpcLink where
  type PropertyType "Name" VpcLink = Value Prelude.Text
  set newValue VpcLink {..} = VpcLink {name = newValue, ..}
instance Property "SecurityGroupIds" VpcLink where
  type PropertyType "SecurityGroupIds" VpcLink = ValueList (Value Prelude.Text)
  set newValue VpcLink {..}
    = VpcLink {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcLink where
  type PropertyType "SubnetIds" VpcLink = ValueList (Value Prelude.Text)
  set newValue VpcLink {..} = VpcLink {subnetIds = newValue, ..}
instance Property "Tags" VpcLink where
  type PropertyType "Tags" VpcLink = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue VpcLink {..}
    = VpcLink {tags = Prelude.pure newValue, ..}