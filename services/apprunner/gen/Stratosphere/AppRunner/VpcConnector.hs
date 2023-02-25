module Stratosphere.AppRunner.VpcConnector (
        VpcConnector(..), mkVpcConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcConnector
  = VpcConnector {securityGroups :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                  subnets :: (ValueList (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag]),
                  vpcConnectorName :: (Prelude.Maybe (Value Prelude.Text))}
mkVpcConnector :: ValueList (Value Prelude.Text) -> VpcConnector
mkVpcConnector subnets
  = VpcConnector
      {subnets = subnets, securityGroups = Prelude.Nothing,
       tags = Prelude.Nothing, vpcConnectorName = Prelude.Nothing}
instance ToResourceProperties VpcConnector where
  toResourceProperties VpcConnector {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::VpcConnector",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Subnets" JSON..= subnets]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConnectorName" Prelude.<$> vpcConnectorName]))}
instance JSON.ToJSON VpcConnector where
  toJSON VpcConnector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Subnets" JSON..= subnets]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConnectorName" Prelude.<$> vpcConnectorName])))
instance Property "SecurityGroups" VpcConnector where
  type PropertyType "SecurityGroups" VpcConnector = ValueList (Value Prelude.Text)
  set newValue VpcConnector {..}
    = VpcConnector {securityGroups = Prelude.pure newValue, ..}
instance Property "Subnets" VpcConnector where
  type PropertyType "Subnets" VpcConnector = ValueList (Value Prelude.Text)
  set newValue VpcConnector {..}
    = VpcConnector {subnets = newValue, ..}
instance Property "Tags" VpcConnector where
  type PropertyType "Tags" VpcConnector = [Tag]
  set newValue VpcConnector {..}
    = VpcConnector {tags = Prelude.pure newValue, ..}
instance Property "VpcConnectorName" VpcConnector where
  type PropertyType "VpcConnectorName" VpcConnector = Value Prelude.Text
  set newValue VpcConnector {..}
    = VpcConnector {vpcConnectorName = Prelude.pure newValue, ..}