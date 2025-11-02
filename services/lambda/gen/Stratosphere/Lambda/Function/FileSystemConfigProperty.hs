module Stratosphere.Lambda.Function.FileSystemConfigProperty (
        FileSystemConfigProperty(..), mkFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html>
    FileSystemConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html#cfn-lambda-function-filesystemconfig-arn>
                              arn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html#cfn-lambda-function-filesystemconfig-localmountpath>
                              localMountPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystemConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FileSystemConfigProperty
mkFileSystemConfigProperty arn localMountPath
  = FileSystemConfigProperty
      {haddock_workaround_ = (), arn = arn,
       localMountPath = localMountPath}
instance ToResourceProperties FileSystemConfigProperty where
  toResourceProperties FileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.FileSystemConfig",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "LocalMountPath" JSON..= localMountPath]}
instance JSON.ToJSON FileSystemConfigProperty where
  toJSON FileSystemConfigProperty {..}
    = JSON.object
        ["Arn" JSON..= arn, "LocalMountPath" JSON..= localMountPath]
instance Property "Arn" FileSystemConfigProperty where
  type PropertyType "Arn" FileSystemConfigProperty = Value Prelude.Text
  set newValue FileSystemConfigProperty {..}
    = FileSystemConfigProperty {arn = newValue, ..}
instance Property "LocalMountPath" FileSystemConfigProperty where
  type PropertyType "LocalMountPath" FileSystemConfigProperty = Value Prelude.Text
  set newValue FileSystemConfigProperty {..}
    = FileSystemConfigProperty {localMountPath = newValue, ..}