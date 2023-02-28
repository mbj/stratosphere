module Stratosphere.CodeBuild.Project.ProjectFileSystemLocationProperty (
        ProjectFileSystemLocationProperty(..),
        mkProjectFileSystemLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectFileSystemLocationProperty
  = ProjectFileSystemLocationProperty {identifier :: (Value Prelude.Text),
                                       location :: (Value Prelude.Text),
                                       mountOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                       mountPoint :: (Value Prelude.Text),
                                       type' :: (Value Prelude.Text)}
mkProjectFileSystemLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> ProjectFileSystemLocationProperty
mkProjectFileSystemLocationProperty
  identifier
  location
  mountPoint
  type'
  = ProjectFileSystemLocationProperty
      {identifier = identifier, location = location,
       mountPoint = mountPoint, type' = type',
       mountOptions = Prelude.Nothing}
instance ToResourceProperties ProjectFileSystemLocationProperty where
  toResourceProperties ProjectFileSystemLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectFileSystemLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Identifier" JSON..= identifier, "Location" JSON..= location,
                            "MountPoint" JSON..= mountPoint, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "MountOptions" Prelude.<$> mountOptions]))}
instance JSON.ToJSON ProjectFileSystemLocationProperty where
  toJSON ProjectFileSystemLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Identifier" JSON..= identifier, "Location" JSON..= location,
               "MountPoint" JSON..= mountPoint, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "MountOptions" Prelude.<$> mountOptions])))
instance Property "Identifier" ProjectFileSystemLocationProperty where
  type PropertyType "Identifier" ProjectFileSystemLocationProperty = Value Prelude.Text
  set newValue ProjectFileSystemLocationProperty {..}
    = ProjectFileSystemLocationProperty {identifier = newValue, ..}
instance Property "Location" ProjectFileSystemLocationProperty where
  type PropertyType "Location" ProjectFileSystemLocationProperty = Value Prelude.Text
  set newValue ProjectFileSystemLocationProperty {..}
    = ProjectFileSystemLocationProperty {location = newValue, ..}
instance Property "MountOptions" ProjectFileSystemLocationProperty where
  type PropertyType "MountOptions" ProjectFileSystemLocationProperty = Value Prelude.Text
  set newValue ProjectFileSystemLocationProperty {..}
    = ProjectFileSystemLocationProperty
        {mountOptions = Prelude.pure newValue, ..}
instance Property "MountPoint" ProjectFileSystemLocationProperty where
  type PropertyType "MountPoint" ProjectFileSystemLocationProperty = Value Prelude.Text
  set newValue ProjectFileSystemLocationProperty {..}
    = ProjectFileSystemLocationProperty {mountPoint = newValue, ..}
instance Property "Type" ProjectFileSystemLocationProperty where
  type PropertyType "Type" ProjectFileSystemLocationProperty = Value Prelude.Text
  set newValue ProjectFileSystemLocationProperty {..}
    = ProjectFileSystemLocationProperty {type' = newValue, ..}