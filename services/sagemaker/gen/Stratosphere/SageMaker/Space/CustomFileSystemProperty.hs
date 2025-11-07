module Stratosphere.SageMaker.Space.CustomFileSystemProperty (
        module Exports, CustomFileSystemProperty(..),
        mkCustomFileSystemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.EFSFileSystemProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.FSxLustreFileSystemProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.S3FileSystemProperty as Exports
import Stratosphere.ResourceProperties
data CustomFileSystemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html>
    CustomFileSystemProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html#cfn-sagemaker-space-customfilesystem-efsfilesystem>
                              eFSFileSystem :: (Prelude.Maybe EFSFileSystemProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html#cfn-sagemaker-space-customfilesystem-fsxlustrefilesystem>
                              fSxLustreFileSystem :: (Prelude.Maybe FSxLustreFileSystemProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html#cfn-sagemaker-space-customfilesystem-s3filesystem>
                              s3FileSystem :: (Prelude.Maybe S3FileSystemProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFileSystemProperty :: CustomFileSystemProperty
mkCustomFileSystemProperty
  = CustomFileSystemProperty
      {haddock_workaround_ = (), eFSFileSystem = Prelude.Nothing,
       fSxLustreFileSystem = Prelude.Nothing,
       s3FileSystem = Prelude.Nothing}
instance ToResourceProperties CustomFileSystemProperty where
  toResourceProperties CustomFileSystemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.CustomFileSystem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EFSFileSystem" Prelude.<$> eFSFileSystem,
                            (JSON..=) "FSxLustreFileSystem" Prelude.<$> fSxLustreFileSystem,
                            (JSON..=) "S3FileSystem" Prelude.<$> s3FileSystem])}
instance JSON.ToJSON CustomFileSystemProperty where
  toJSON CustomFileSystemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EFSFileSystem" Prelude.<$> eFSFileSystem,
               (JSON..=) "FSxLustreFileSystem" Prelude.<$> fSxLustreFileSystem,
               (JSON..=) "S3FileSystem" Prelude.<$> s3FileSystem]))
instance Property "EFSFileSystem" CustomFileSystemProperty where
  type PropertyType "EFSFileSystem" CustomFileSystemProperty = EFSFileSystemProperty
  set newValue CustomFileSystemProperty {..}
    = CustomFileSystemProperty
        {eFSFileSystem = Prelude.pure newValue, ..}
instance Property "FSxLustreFileSystem" CustomFileSystemProperty where
  type PropertyType "FSxLustreFileSystem" CustomFileSystemProperty = FSxLustreFileSystemProperty
  set newValue CustomFileSystemProperty {..}
    = CustomFileSystemProperty
        {fSxLustreFileSystem = Prelude.pure newValue, ..}
instance Property "S3FileSystem" CustomFileSystemProperty where
  type PropertyType "S3FileSystem" CustomFileSystemProperty = S3FileSystemProperty
  set newValue CustomFileSystemProperty {..}
    = CustomFileSystemProperty
        {s3FileSystem = Prelude.pure newValue, ..}