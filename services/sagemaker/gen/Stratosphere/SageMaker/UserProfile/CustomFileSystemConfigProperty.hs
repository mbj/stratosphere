module Stratosphere.SageMaker.UserProfile.CustomFileSystemConfigProperty (
        module Exports, CustomFileSystemConfigProperty(..),
        mkCustomFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.EFSFileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.FSxLustreFileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.S3FileSystemConfigProperty as Exports
import Stratosphere.ResourceProperties
data CustomFileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html>
    CustomFileSystemConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-efsfilesystemconfig>
                                    eFSFileSystemConfig :: (Prelude.Maybe EFSFileSystemConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-fsxlustrefilesystemconfig>
                                    fSxLustreFileSystemConfig :: (Prelude.Maybe FSxLustreFileSystemConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-s3filesystemconfig>
                                    s3FileSystemConfig :: (Prelude.Maybe S3FileSystemConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFileSystemConfigProperty :: CustomFileSystemConfigProperty
mkCustomFileSystemConfigProperty
  = CustomFileSystemConfigProperty
      {haddock_workaround_ = (), eFSFileSystemConfig = Prelude.Nothing,
       fSxLustreFileSystemConfig = Prelude.Nothing,
       s3FileSystemConfig = Prelude.Nothing}
instance ToResourceProperties CustomFileSystemConfigProperty where
  toResourceProperties CustomFileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CustomFileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EFSFileSystemConfig" Prelude.<$> eFSFileSystemConfig,
                            (JSON..=) "FSxLustreFileSystemConfig"
                              Prelude.<$> fSxLustreFileSystemConfig,
                            (JSON..=) "S3FileSystemConfig" Prelude.<$> s3FileSystemConfig])}
instance JSON.ToJSON CustomFileSystemConfigProperty where
  toJSON CustomFileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EFSFileSystemConfig" Prelude.<$> eFSFileSystemConfig,
               (JSON..=) "FSxLustreFileSystemConfig"
                 Prelude.<$> fSxLustreFileSystemConfig,
               (JSON..=) "S3FileSystemConfig" Prelude.<$> s3FileSystemConfig]))
instance Property "EFSFileSystemConfig" CustomFileSystemConfigProperty where
  type PropertyType "EFSFileSystemConfig" CustomFileSystemConfigProperty = EFSFileSystemConfigProperty
  set newValue CustomFileSystemConfigProperty {..}
    = CustomFileSystemConfigProperty
        {eFSFileSystemConfig = Prelude.pure newValue, ..}
instance Property "FSxLustreFileSystemConfig" CustomFileSystemConfigProperty where
  type PropertyType "FSxLustreFileSystemConfig" CustomFileSystemConfigProperty = FSxLustreFileSystemConfigProperty
  set newValue CustomFileSystemConfigProperty {..}
    = CustomFileSystemConfigProperty
        {fSxLustreFileSystemConfig = Prelude.pure newValue, ..}
instance Property "S3FileSystemConfig" CustomFileSystemConfigProperty where
  type PropertyType "S3FileSystemConfig" CustomFileSystemConfigProperty = S3FileSystemConfigProperty
  set newValue CustomFileSystemConfigProperty {..}
    = CustomFileSystemConfigProperty
        {s3FileSystemConfig = Prelude.pure newValue, ..}