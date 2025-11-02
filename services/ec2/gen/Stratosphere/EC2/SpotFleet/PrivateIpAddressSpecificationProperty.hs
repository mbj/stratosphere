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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-privateipaddressspecification.html>
    PrivateIpAddressSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-privateipaddressspecification.html#cfn-ec2-spotfleet-privateipaddressspecification-primary>
                                           primary :: (Prelude.Maybe (Value Prelude.Bool)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-privateipaddressspecification.html#cfn-ec2-spotfleet-privateipaddressspecification-privateipaddress>
                                           privateIpAddress :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateIpAddressSpecificationProperty ::
  Value Prelude.Text -> PrivateIpAddressSpecificationProperty
mkPrivateIpAddressSpecificationProperty privateIpAddress
  = PrivateIpAddressSpecificationProperty
      {haddock_workaround_ = (), privateIpAddress = privateIpAddress,
       primary = Prelude.Nothing}
instance ToResourceProperties PrivateIpAddressSpecificationProperty where
  toResourceProperties PrivateIpAddressSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.PrivateIpAddressSpecification",
         supportsTags = Prelude.False,
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