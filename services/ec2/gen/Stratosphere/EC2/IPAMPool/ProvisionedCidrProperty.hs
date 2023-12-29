module Stratosphere.EC2.IPAMPool.ProvisionedCidrProperty (
        ProvisionedCidrProperty(..), mkProvisionedCidrProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedCidrProperty
  = ProvisionedCidrProperty {cidr :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionedCidrProperty ::
  Value Prelude.Text -> ProvisionedCidrProperty
mkProvisionedCidrProperty cidr
  = ProvisionedCidrProperty {cidr = cidr}
instance ToResourceProperties ProvisionedCidrProperty where
  toResourceProperties ProvisionedCidrProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMPool.ProvisionedCidr",
         supportsTags = Prelude.False, properties = ["Cidr" JSON..= cidr]}
instance JSON.ToJSON ProvisionedCidrProperty where
  toJSON ProvisionedCidrProperty {..}
    = JSON.object ["Cidr" JSON..= cidr]
instance Property "Cidr" ProvisionedCidrProperty where
  type PropertyType "Cidr" ProvisionedCidrProperty = Value Prelude.Text
  set newValue ProvisionedCidrProperty {}
    = ProvisionedCidrProperty {cidr = newValue, ..}