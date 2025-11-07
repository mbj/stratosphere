module Stratosphere.SageMaker.Space.FSxLustreFileSystemProperty (
        FSxLustreFileSystemProperty(..), mkFSxLustreFileSystemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxLustreFileSystemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-fsxlustrefilesystem.html>
    FSxLustreFileSystemProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-fsxlustrefilesystem.html#cfn-sagemaker-space-fsxlustrefilesystem-filesystemid>
                                 fileSystemId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxLustreFileSystemProperty ::
  Value Prelude.Text -> FSxLustreFileSystemProperty
mkFSxLustreFileSystemProperty fileSystemId
  = FSxLustreFileSystemProperty
      {haddock_workaround_ = (), fileSystemId = fileSystemId}
instance ToResourceProperties FSxLustreFileSystemProperty where
  toResourceProperties FSxLustreFileSystemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.FSxLustreFileSystem",
         supportsTags = Prelude.False,
         properties = ["FileSystemId" JSON..= fileSystemId]}
instance JSON.ToJSON FSxLustreFileSystemProperty where
  toJSON FSxLustreFileSystemProperty {..}
    = JSON.object ["FileSystemId" JSON..= fileSystemId]
instance Property "FileSystemId" FSxLustreFileSystemProperty where
  type PropertyType "FileSystemId" FSxLustreFileSystemProperty = Value Prelude.Text
  set newValue FSxLustreFileSystemProperty {..}
    = FSxLustreFileSystemProperty {fileSystemId = newValue, ..}