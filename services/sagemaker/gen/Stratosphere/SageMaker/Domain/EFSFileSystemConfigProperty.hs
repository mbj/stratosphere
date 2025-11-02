module Stratosphere.SageMaker.Domain.EFSFileSystemConfigProperty (
        EFSFileSystemConfigProperty(..), mkEFSFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EFSFileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-efsfilesystemconfig.html>
    EFSFileSystemConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-efsfilesystemconfig.html#cfn-sagemaker-domain-efsfilesystemconfig-filesystemid>
                                 fileSystemId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-efsfilesystemconfig.html#cfn-sagemaker-domain-efsfilesystemconfig-filesystempath>
                                 fileSystemPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEFSFileSystemConfigProperty ::
  Value Prelude.Text -> EFSFileSystemConfigProperty
mkEFSFileSystemConfigProperty fileSystemId
  = EFSFileSystemConfigProperty
      {haddock_workaround_ = (), fileSystemId = fileSystemId,
       fileSystemPath = Prelude.Nothing}
instance ToResourceProperties EFSFileSystemConfigProperty where
  toResourceProperties EFSFileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.EFSFileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId]
                           (Prelude.catMaybes
                              [(JSON..=) "FileSystemPath" Prelude.<$> fileSystemPath]))}
instance JSON.ToJSON EFSFileSystemConfigProperty where
  toJSON EFSFileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId]
              (Prelude.catMaybes
                 [(JSON..=) "FileSystemPath" Prelude.<$> fileSystemPath])))
instance Property "FileSystemId" EFSFileSystemConfigProperty where
  type PropertyType "FileSystemId" EFSFileSystemConfigProperty = Value Prelude.Text
  set newValue EFSFileSystemConfigProperty {..}
    = EFSFileSystemConfigProperty {fileSystemId = newValue, ..}
instance Property "FileSystemPath" EFSFileSystemConfigProperty where
  type PropertyType "FileSystemPath" EFSFileSystemConfigProperty = Value Prelude.Text
  set newValue EFSFileSystemConfigProperty {..}
    = EFSFileSystemConfigProperty
        {fileSystemPath = Prelude.pure newValue, ..}