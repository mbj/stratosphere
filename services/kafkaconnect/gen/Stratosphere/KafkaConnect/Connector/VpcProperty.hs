module Stratosphere.KafkaConnect.Connector.VpcProperty (
        VpcProperty(..), mkVpcProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcProperty
  = VpcProperty {securityGroups :: (ValueList (Value Prelude.Text)),
                 subnets :: (ValueList (Value Prelude.Text))}
mkVpcProperty ::
  ValueList (Value Prelude.Text)
  -> ValueList (Value Prelude.Text) -> VpcProperty
mkVpcProperty securityGroups subnets
  = VpcProperty {securityGroups = securityGroups, subnets = subnets}
instance ToResourceProperties VpcProperty where
  toResourceProperties VpcProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.Vpc",
         properties = ["SecurityGroups" JSON..= securityGroups,
                       "Subnets" JSON..= subnets]}
instance JSON.ToJSON VpcProperty where
  toJSON VpcProperty {..}
    = JSON.object
        ["SecurityGroups" JSON..= securityGroups,
         "Subnets" JSON..= subnets]
instance Property "SecurityGroups" VpcProperty where
  type PropertyType "SecurityGroups" VpcProperty = ValueList (Value Prelude.Text)
  set newValue VpcProperty {..}
    = VpcProperty {securityGroups = newValue, ..}
instance Property "Subnets" VpcProperty where
  type PropertyType "Subnets" VpcProperty = ValueList (Value Prelude.Text)
  set newValue VpcProperty {..}
    = VpcProperty {subnets = newValue, ..}