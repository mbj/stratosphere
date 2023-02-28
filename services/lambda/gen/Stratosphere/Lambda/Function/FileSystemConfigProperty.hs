module Stratosphere.Lambda.Function.FileSystemConfigProperty (
        FileSystemConfigProperty(..), mkFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemConfigProperty
  = FileSystemConfigProperty {arn :: (Value Prelude.Text),
                              localMountPath :: (Value Prelude.Text)}
mkFileSystemConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FileSystemConfigProperty
mkFileSystemConfigProperty arn localMountPath
  = FileSystemConfigProperty
      {arn = arn, localMountPath = localMountPath}
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