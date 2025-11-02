module Stratosphere.SageMaker.AppImageConfig.FileSystemConfigProperty (
        FileSystemConfigProperty(..), mkFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-filesystemconfig.html>
    FileSystemConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-filesystemconfig.html#cfn-sagemaker-appimageconfig-filesystemconfig-defaultgid>
                              defaultGid :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-filesystemconfig.html#cfn-sagemaker-appimageconfig-filesystemconfig-defaultuid>
                              defaultUid :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-filesystemconfig.html#cfn-sagemaker-appimageconfig-filesystemconfig-mountpath>
                              mountPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystemConfigProperty :: FileSystemConfigProperty
mkFileSystemConfigProperty
  = FileSystemConfigProperty
      {haddock_workaround_ = (), defaultGid = Prelude.Nothing,
       defaultUid = Prelude.Nothing, mountPath = Prelude.Nothing}
instance ToResourceProperties FileSystemConfigProperty where
  toResourceProperties FileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.FileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultGid" Prelude.<$> defaultGid,
                            (JSON..=) "DefaultUid" Prelude.<$> defaultUid,
                            (JSON..=) "MountPath" Prelude.<$> mountPath])}
instance JSON.ToJSON FileSystemConfigProperty where
  toJSON FileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultGid" Prelude.<$> defaultGid,
               (JSON..=) "DefaultUid" Prelude.<$> defaultUid,
               (JSON..=) "MountPath" Prelude.<$> mountPath]))
instance Property "DefaultGid" FileSystemConfigProperty where
  type PropertyType "DefaultGid" FileSystemConfigProperty = Value Prelude.Integer
  set newValue FileSystemConfigProperty {..}
    = FileSystemConfigProperty {defaultGid = Prelude.pure newValue, ..}
instance Property "DefaultUid" FileSystemConfigProperty where
  type PropertyType "DefaultUid" FileSystemConfigProperty = Value Prelude.Integer
  set newValue FileSystemConfigProperty {..}
    = FileSystemConfigProperty {defaultUid = Prelude.pure newValue, ..}
instance Property "MountPath" FileSystemConfigProperty where
  type PropertyType "MountPath" FileSystemConfigProperty = Value Prelude.Text
  set newValue FileSystemConfigProperty {..}
    = FileSystemConfigProperty {mountPath = Prelude.pure newValue, ..}