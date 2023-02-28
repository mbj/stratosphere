module Stratosphere.EC2.CarrierGateway (
        CarrierGateway(..), mkCarrierGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CarrierGateway
  = CarrierGateway {tags :: (Prelude.Maybe [Tag]),
                    vpcId :: (Value Prelude.Text)}
mkCarrierGateway :: Value Prelude.Text -> CarrierGateway
mkCarrierGateway vpcId
  = CarrierGateway {vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties CarrierGateway where
  toResourceProperties CarrierGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CarrierGateway", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CarrierGateway where
  toJSON CarrierGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" CarrierGateway where
  type PropertyType "Tags" CarrierGateway = [Tag]
  set newValue CarrierGateway {..}
    = CarrierGateway {tags = Prelude.pure newValue, ..}
instance Property "VpcId" CarrierGateway where
  type PropertyType "VpcId" CarrierGateway = Value Prelude.Text
  set newValue CarrierGateway {..}
    = CarrierGateway {vpcId = newValue, ..}