module Stratosphere.GlobalAccelerator.Accelerator (
        Accelerator(..), mkAccelerator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Accelerator
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html>
    Accelerator {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-enabled>
                 enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-ipaddresstype>
                 ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-ipaddresses>
                 ipAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccelerator :: Value Prelude.Text -> Accelerator
mkAccelerator name
  = Accelerator
      {haddock_workaround_ = (), name = name, enabled = Prelude.Nothing,
       ipAddressType = Prelude.Nothing, ipAddresses = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Accelerator where
  toResourceProperties Accelerator {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::Accelerator",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "IpAddresses" Prelude.<$> ipAddresses,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Accelerator where
  toJSON Accelerator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "IpAddresses" Prelude.<$> ipAddresses,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" Accelerator where
  type PropertyType "Enabled" Accelerator = Value Prelude.Bool
  set newValue Accelerator {..}
    = Accelerator {enabled = Prelude.pure newValue, ..}
instance Property "IpAddressType" Accelerator where
  type PropertyType "IpAddressType" Accelerator = Value Prelude.Text
  set newValue Accelerator {..}
    = Accelerator {ipAddressType = Prelude.pure newValue, ..}
instance Property "IpAddresses" Accelerator where
  type PropertyType "IpAddresses" Accelerator = ValueList Prelude.Text
  set newValue Accelerator {..}
    = Accelerator {ipAddresses = Prelude.pure newValue, ..}
instance Property "Name" Accelerator where
  type PropertyType "Name" Accelerator = Value Prelude.Text
  set newValue Accelerator {..} = Accelerator {name = newValue, ..}
instance Property "Tags" Accelerator where
  type PropertyType "Tags" Accelerator = [Tag]
  set newValue Accelerator {..}
    = Accelerator {tags = Prelude.pure newValue, ..}