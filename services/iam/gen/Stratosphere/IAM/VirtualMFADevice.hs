module Stratosphere.IAM.VirtualMFADevice (
        VirtualMFADevice(..), mkVirtualMFADevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualMFADevice
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-virtualmfadevice.html>
    VirtualMFADevice {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-virtualmfadevice.html#cfn-iam-virtualmfadevice-path>
                      path :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-virtualmfadevice.html#cfn-iam-virtualmfadevice-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-virtualmfadevice.html#cfn-iam-virtualmfadevice-users>
                      users :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-virtualmfadevice.html#cfn-iam-virtualmfadevice-virtualmfadevicename>
                      virtualMfaDeviceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualMFADevice :: ValueList Prelude.Text -> VirtualMFADevice
mkVirtualMFADevice users
  = VirtualMFADevice
      {haddock_workaround_ = (), users = users, path = Prelude.Nothing,
       tags = Prelude.Nothing, virtualMfaDeviceName = Prelude.Nothing}
instance ToResourceProperties VirtualMFADevice where
  toResourceProperties VirtualMFADevice {..}
    = ResourceProperties
        {awsType = "AWS::IAM::VirtualMFADevice",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Users" JSON..= users]
                           (Prelude.catMaybes
                              [(JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VirtualMfaDeviceName"
                                 Prelude.<$> virtualMfaDeviceName]))}
instance JSON.ToJSON VirtualMFADevice where
  toJSON VirtualMFADevice {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Users" JSON..= users]
              (Prelude.catMaybes
                 [(JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VirtualMfaDeviceName"
                    Prelude.<$> virtualMfaDeviceName])))
instance Property "Path" VirtualMFADevice where
  type PropertyType "Path" VirtualMFADevice = Value Prelude.Text
  set newValue VirtualMFADevice {..}
    = VirtualMFADevice {path = Prelude.pure newValue, ..}
instance Property "Tags" VirtualMFADevice where
  type PropertyType "Tags" VirtualMFADevice = [Tag]
  set newValue VirtualMFADevice {..}
    = VirtualMFADevice {tags = Prelude.pure newValue, ..}
instance Property "Users" VirtualMFADevice where
  type PropertyType "Users" VirtualMFADevice = ValueList Prelude.Text
  set newValue VirtualMFADevice {..}
    = VirtualMFADevice {users = newValue, ..}
instance Property "VirtualMfaDeviceName" VirtualMFADevice where
  type PropertyType "VirtualMfaDeviceName" VirtualMFADevice = Value Prelude.Text
  set newValue VirtualMFADevice {..}
    = VirtualMFADevice
        {virtualMfaDeviceName = Prelude.pure newValue, ..}