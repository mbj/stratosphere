module Stratosphere.EC2.Instance.PrivateIpAddressSpecificationProperty (
        PrivateIpAddressSpecificationProperty(..),
        mkPrivateIpAddressSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateIpAddressSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privateipaddressspecification.html>
    PrivateIpAddressSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privateipaddressspecification.html#cfn-ec2-instance-privateipaddressspecification-primary>
                                           primary :: (Value Prelude.Bool),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privateipaddressspecification.html#cfn-ec2-instance-privateipaddressspecification-privateipaddress>
                                           privateIpAddress :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateIpAddressSpecificationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> PrivateIpAddressSpecificationProperty
mkPrivateIpAddressSpecificationProperty primary privateIpAddress
  = PrivateIpAddressSpecificationProperty
      {haddock_workaround_ = (), primary = primary,
       privateIpAddress = privateIpAddress}
instance ToResourceProperties PrivateIpAddressSpecificationProperty where
  toResourceProperties PrivateIpAddressSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.PrivateIpAddressSpecification",
         supportsTags = Prelude.False,
         properties = ["Primary" JSON..= primary,
                       "PrivateIpAddress" JSON..= privateIpAddress]}
instance JSON.ToJSON PrivateIpAddressSpecificationProperty where
  toJSON PrivateIpAddressSpecificationProperty {..}
    = JSON.object
        ["Primary" JSON..= primary,
         "PrivateIpAddress" JSON..= privateIpAddress]
instance Property "Primary" PrivateIpAddressSpecificationProperty where
  type PropertyType "Primary" PrivateIpAddressSpecificationProperty = Value Prelude.Bool
  set newValue PrivateIpAddressSpecificationProperty {..}
    = PrivateIpAddressSpecificationProperty {primary = newValue, ..}
instance Property "PrivateIpAddress" PrivateIpAddressSpecificationProperty where
  type PropertyType "PrivateIpAddress" PrivateIpAddressSpecificationProperty = Value Prelude.Text
  set newValue PrivateIpAddressSpecificationProperty {..}
    = PrivateIpAddressSpecificationProperty
        {privateIpAddress = newValue, ..}