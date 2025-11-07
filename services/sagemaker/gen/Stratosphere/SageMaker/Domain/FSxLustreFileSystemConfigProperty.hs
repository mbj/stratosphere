module Stratosphere.SageMaker.Domain.FSxLustreFileSystemConfigProperty (
        FSxLustreFileSystemConfigProperty(..),
        mkFSxLustreFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxLustreFileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-fsxlustrefilesystemconfig.html>
    FSxLustreFileSystemConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-fsxlustrefilesystemconfig.html#cfn-sagemaker-domain-fsxlustrefilesystemconfig-filesystemid>
                                       fileSystemId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-fsxlustrefilesystemconfig.html#cfn-sagemaker-domain-fsxlustrefilesystemconfig-filesystempath>
                                       fileSystemPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxLustreFileSystemConfigProperty ::
  Value Prelude.Text -> FSxLustreFileSystemConfigProperty
mkFSxLustreFileSystemConfigProperty fileSystemId
  = FSxLustreFileSystemConfigProperty
      {haddock_workaround_ = (), fileSystemId = fileSystemId,
       fileSystemPath = Prelude.Nothing}
instance ToResourceProperties FSxLustreFileSystemConfigProperty where
  toResourceProperties FSxLustreFileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.FSxLustreFileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId]
                           (Prelude.catMaybes
                              [(JSON..=) "FileSystemPath" Prelude.<$> fileSystemPath]))}
instance JSON.ToJSON FSxLustreFileSystemConfigProperty where
  toJSON FSxLustreFileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId]
              (Prelude.catMaybes
                 [(JSON..=) "FileSystemPath" Prelude.<$> fileSystemPath])))
instance Property "FileSystemId" FSxLustreFileSystemConfigProperty where
  type PropertyType "FileSystemId" FSxLustreFileSystemConfigProperty = Value Prelude.Text
  set newValue FSxLustreFileSystemConfigProperty {..}
    = FSxLustreFileSystemConfigProperty {fileSystemId = newValue, ..}
instance Property "FileSystemPath" FSxLustreFileSystemConfigProperty where
  type PropertyType "FileSystemPath" FSxLustreFileSystemConfigProperty = Value Prelude.Text
  set newValue FSxLustreFileSystemConfigProperty {..}
    = FSxLustreFileSystemConfigProperty
        {fileSystemPath = Prelude.pure newValue, ..}