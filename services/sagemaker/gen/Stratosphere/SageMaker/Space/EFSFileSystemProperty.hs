module Stratosphere.SageMaker.Space.EFSFileSystemProperty (
        EFSFileSystemProperty(..), mkEFSFileSystemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EFSFileSystemProperty
  = EFSFileSystemProperty {fileSystemId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEFSFileSystemProperty ::
  Value Prelude.Text -> EFSFileSystemProperty
mkEFSFileSystemProperty fileSystemId
  = EFSFileSystemProperty {fileSystemId = fileSystemId}
instance ToResourceProperties EFSFileSystemProperty where
  toResourceProperties EFSFileSystemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.EFSFileSystem",
         supportsTags = Prelude.False,
         properties = ["FileSystemId" JSON..= fileSystemId]}
instance JSON.ToJSON EFSFileSystemProperty where
  toJSON EFSFileSystemProperty {..}
    = JSON.object ["FileSystemId" JSON..= fileSystemId]
instance Property "FileSystemId" EFSFileSystemProperty where
  type PropertyType "FileSystemId" EFSFileSystemProperty = Value Prelude.Text
  set newValue EFSFileSystemProperty {}
    = EFSFileSystemProperty {fileSystemId = newValue, ..}