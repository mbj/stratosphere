module Stratosphere.DataSync.LocationFSxONTAP.SMBProperty (
        module Exports, SMBProperty(..), mkSMBProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxONTAP.SmbMountOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SMBProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smb.html>
    SMBProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smb.html#cfn-datasync-locationfsxontap-smb-domain>
                 domain :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smb.html#cfn-datasync-locationfsxontap-smb-mountoptions>
                 mountOptions :: SmbMountOptionsProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smb.html#cfn-datasync-locationfsxontap-smb-password>
                 password :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smb.html#cfn-datasync-locationfsxontap-smb-user>
                 user :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSMBProperty ::
  SmbMountOptionsProperty
  -> Value Prelude.Text -> Value Prelude.Text -> SMBProperty
mkSMBProperty mountOptions password user
  = SMBProperty
      {haddock_workaround_ = (), mountOptions = mountOptions,
       password = password, user = user, domain = Prelude.Nothing}
instance ToResourceProperties SMBProperty where
  toResourceProperties SMBProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP.SMB",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MountOptions" JSON..= mountOptions, "Password" JSON..= password,
                            "User" JSON..= user]
                           (Prelude.catMaybes [(JSON..=) "Domain" Prelude.<$> domain]))}
instance JSON.ToJSON SMBProperty where
  toJSON SMBProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MountOptions" JSON..= mountOptions, "Password" JSON..= password,
               "User" JSON..= user]
              (Prelude.catMaybes [(JSON..=) "Domain" Prelude.<$> domain])))
instance Property "Domain" SMBProperty where
  type PropertyType "Domain" SMBProperty = Value Prelude.Text
  set newValue SMBProperty {..}
    = SMBProperty {domain = Prelude.pure newValue, ..}
instance Property "MountOptions" SMBProperty where
  type PropertyType "MountOptions" SMBProperty = SmbMountOptionsProperty
  set newValue SMBProperty {..}
    = SMBProperty {mountOptions = newValue, ..}
instance Property "Password" SMBProperty where
  type PropertyType "Password" SMBProperty = Value Prelude.Text
  set newValue SMBProperty {..}
    = SMBProperty {password = newValue, ..}
instance Property "User" SMBProperty where
  type PropertyType "User" SMBProperty = Value Prelude.Text
  set newValue SMBProperty {..} = SMBProperty {user = newValue, ..}