module Stratosphere.EC2.SpotFleet.PrivateIpAddressSpecificationProperty (
        PrivateIpAddressSpecificationProperty(..),
        mkPrivateIpAddressSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateIpAddressSpecificationProperty
  = PrivateIpAddressSpecificationProperty {primary :: (Prelude.Maybe (Value Prelude.Bool)),
                                           privateIpAddress :: (Value Prelude.Text)}
mkPrivateIpAddressSpecificationProperty ::
  Value Prelude.Text -> PrivateIpAddressSpecificationProperty
mkPrivateIpAddressSpecificationProperty privateIpAddress
  = PrivateIpAddressSpecificationProperty
      {privateIpAddress = privateIpAddress, primary = Prelude.Nothing}
instance ToResourceProperties PrivateIpAddressSpecificationProperty where
  toResourceProperties PrivateIpAddressSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.PrivateIpAddressSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PrivateIpAddress" JSON..= privateIpAddress]
                           (Prelude.catMaybes [(JSON..=) "Primary" Prelude.<$> primary]))}
instance JSON.ToJSON PrivateIpAddressSpecificationProperty where
  toJSON PrivateIpAddressSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PrivateIpAddress" JSON..= privateIpAddress]
              (Prelude.catMaybes [(JSON..=) "Primary" Prelude.<$> primary])))
instance Property "Primary" PrivateIpAddressSpecificationProperty where
  type PropertyType "Primary" PrivateIpAddressSpecificationProperty = Value Prelude.Bool
  set newValue PrivateIpAddressSpecificationProperty {..}
    = PrivateIpAddressSpecificationProperty
        {primary = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" PrivateIpAddressSpecificationProperty where
  type PropertyType "PrivateIpAddress" PrivateIpAddressSpecificationProperty = Value Prelude.Text
  set newValue PrivateIpAddressSpecificationProperty {..}
    = PrivateIpAddressSpecificationProperty
        {privateIpAddress = newValue, ..}