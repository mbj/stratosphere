module Stratosphere.Deadline.StorageProfile.FileSystemLocationProperty (
        FileSystemLocationProperty(..), mkFileSystemLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemLocationProperty
  = FileSystemLocationProperty {name :: (Value Prelude.Text),
                                path :: (Value Prelude.Text),
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystemLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FileSystemLocationProperty
mkFileSystemLocationProperty name path type'
  = FileSystemLocationProperty
      {name = name, path = path, type' = type'}
instance ToResourceProperties FileSystemLocationProperty where
  toResourceProperties FileSystemLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::StorageProfile.FileSystemLocation",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Path" JSON..= path,
                       "Type" JSON..= type']}
instance JSON.ToJSON FileSystemLocationProperty where
  toJSON FileSystemLocationProperty {..}
    = JSON.object
        ["Name" JSON..= name, "Path" JSON..= path, "Type" JSON..= type']
instance Property "Name" FileSystemLocationProperty where
  type PropertyType "Name" FileSystemLocationProperty = Value Prelude.Text
  set newValue FileSystemLocationProperty {..}
    = FileSystemLocationProperty {name = newValue, ..}
instance Property "Path" FileSystemLocationProperty where
  type PropertyType "Path" FileSystemLocationProperty = Value Prelude.Text
  set newValue FileSystemLocationProperty {..}
    = FileSystemLocationProperty {path = newValue, ..}
instance Property "Type" FileSystemLocationProperty where
  type PropertyType "Type" FileSystemLocationProperty = Value Prelude.Text
  set newValue FileSystemLocationProperty {..}
    = FileSystemLocationProperty {type' = newValue, ..}