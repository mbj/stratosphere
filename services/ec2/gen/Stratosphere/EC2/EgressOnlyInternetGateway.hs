module Stratosphere.EC2.EgressOnlyInternetGateway (
        EgressOnlyInternetGateway(..), mkEgressOnlyInternetGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressOnlyInternetGateway
  = EgressOnlyInternetGateway {vpcId :: (Value Prelude.Text)}
mkEgressOnlyInternetGateway ::
  Value Prelude.Text -> EgressOnlyInternetGateway
mkEgressOnlyInternetGateway vpcId
  = EgressOnlyInternetGateway {vpcId = vpcId}
instance ToResourceProperties EgressOnlyInternetGateway where
  toResourceProperties EgressOnlyInternetGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EgressOnlyInternetGateway",
         properties = ["VpcId" JSON..= vpcId]}
instance JSON.ToJSON EgressOnlyInternetGateway where
  toJSON EgressOnlyInternetGateway {..}
    = JSON.object ["VpcId" JSON..= vpcId]
instance Property "VpcId" EgressOnlyInternetGateway where
  type PropertyType "VpcId" EgressOnlyInternetGateway = Value Prelude.Text
  set newValue EgressOnlyInternetGateway {}
    = EgressOnlyInternetGateway {vpcId = newValue, ..}