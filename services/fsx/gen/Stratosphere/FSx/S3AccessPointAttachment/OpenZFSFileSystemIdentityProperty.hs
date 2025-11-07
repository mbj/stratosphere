module Stratosphere.FSx.S3AccessPointAttachment.OpenZFSFileSystemIdentityProperty (
        module Exports, OpenZFSFileSystemIdentityProperty(..),
        mkOpenZFSFileSystemIdentityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.OpenZFSPosixFileSystemUserProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenZFSFileSystemIdentityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsfilesystemidentity.html>
    OpenZFSFileSystemIdentityProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsfilesystemidentity.html#cfn-fsx-s3accesspointattachment-openzfsfilesystemidentity-posixuser>
                                       posixUser :: OpenZFSPosixFileSystemUserProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsfilesystemidentity.html#cfn-fsx-s3accesspointattachment-openzfsfilesystemidentity-type>
                                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenZFSFileSystemIdentityProperty ::
  OpenZFSPosixFileSystemUserProperty
  -> Value Prelude.Text -> OpenZFSFileSystemIdentityProperty
mkOpenZFSFileSystemIdentityProperty posixUser type'
  = OpenZFSFileSystemIdentityProperty
      {haddock_workaround_ = (), posixUser = posixUser, type' = type'}
instance ToResourceProperties OpenZFSFileSystemIdentityProperty where
  toResourceProperties OpenZFSFileSystemIdentityProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.OpenZFSFileSystemIdentity",
         supportsTags = Prelude.False,
         properties = ["PosixUser" JSON..= posixUser, "Type" JSON..= type']}
instance JSON.ToJSON OpenZFSFileSystemIdentityProperty where
  toJSON OpenZFSFileSystemIdentityProperty {..}
    = JSON.object ["PosixUser" JSON..= posixUser, "Type" JSON..= type']
instance Property "PosixUser" OpenZFSFileSystemIdentityProperty where
  type PropertyType "PosixUser" OpenZFSFileSystemIdentityProperty = OpenZFSPosixFileSystemUserProperty
  set newValue OpenZFSFileSystemIdentityProperty {..}
    = OpenZFSFileSystemIdentityProperty {posixUser = newValue, ..}
instance Property "Type" OpenZFSFileSystemIdentityProperty where
  type PropertyType "Type" OpenZFSFileSystemIdentityProperty = Value Prelude.Text
  set newValue OpenZFSFileSystemIdentityProperty {..}
    = OpenZFSFileSystemIdentityProperty {type' = newValue, ..}