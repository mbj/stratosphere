module Stratosphere.SageMaker.Space.CustomFileSystemProperty (
        module Exports, CustomFileSystemProperty(..),
        mkCustomFileSystemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.EFSFileSystemProperty as Exports
import Stratosphere.ResourceProperties
data CustomFileSystemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html>
    CustomFileSystemProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-customfilesystem.html#cfn-sagemaker-space-customfilesystem-efsfilesystem>
                              eFSFileSystem :: (Prelude.Maybe EFSFileSystemProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFileSystemProperty :: CustomFileSystemProperty
mkCustomFileSystemProperty
  = CustomFileSystemProperty
      {haddock_workaround_ = (), eFSFileSystem = Prelude.Nothing}
instance ToResourceProperties CustomFileSystemProperty where
  toResourceProperties CustomFileSystemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.CustomFileSystem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EFSFileSystem" Prelude.<$> eFSFileSystem])}
instance JSON.ToJSON CustomFileSystemProperty where
  toJSON CustomFileSystemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EFSFileSystem" Prelude.<$> eFSFileSystem]))
instance Property "EFSFileSystem" CustomFileSystemProperty where
  type PropertyType "EFSFileSystem" CustomFileSystemProperty = EFSFileSystemProperty
  set newValue CustomFileSystemProperty {..}
    = CustomFileSystemProperty
        {eFSFileSystem = Prelude.pure newValue, ..}