module Stratosphere.Transfer.Server.EndpointDetailsProperty (
        EndpointDetailsProperty(..), mkEndpointDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointDetailsProperty
  = EndpointDetailsProperty {addressAllocationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                             vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointDetailsProperty :: EndpointDetailsProperty
mkEndpointDetailsProperty
  = EndpointDetailsProperty
      {addressAllocationIds = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       vpcEndpointId = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties EndpointDetailsProperty where
  toResourceProperties EndpointDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.EndpointDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddressAllocationIds" Prelude.<$> addressAllocationIds,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                            (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON EndpointDetailsProperty where
  toJSON EndpointDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddressAllocationIds" Prelude.<$> addressAllocationIds,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
               (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "AddressAllocationIds" EndpointDetailsProperty where
  type PropertyType "AddressAllocationIds" EndpointDetailsProperty = ValueList Prelude.Text
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {addressAllocationIds = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" EndpointDetailsProperty where
  type PropertyType "SecurityGroupIds" EndpointDetailsProperty = ValueList Prelude.Text
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" EndpointDetailsProperty where
  type PropertyType "SubnetIds" EndpointDetailsProperty = ValueList Prelude.Text
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcEndpointId" EndpointDetailsProperty where
  type PropertyType "VpcEndpointId" EndpointDetailsProperty = Value Prelude.Text
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {vpcEndpointId = Prelude.pure newValue, ..}
instance Property "VpcId" EndpointDetailsProperty where
  type PropertyType "VpcId" EndpointDetailsProperty = Value Prelude.Text
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty {vpcId = Prelude.pure newValue, ..}