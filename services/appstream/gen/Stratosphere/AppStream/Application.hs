module Stratosphere.AppStream.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.Application.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {appBlockArn :: (Value Prelude.Text),
                 attributesToDelete :: (Prelude.Maybe (ValueList Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 displayName :: (Prelude.Maybe (Value Prelude.Text)),
                 iconS3Location :: S3LocationProperty,
                 instanceFamilies :: (ValueList Prelude.Text),
                 launchParameters :: (Prelude.Maybe (Value Prelude.Text)),
                 launchPath :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 platforms :: (ValueList Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
mkApplication ::
  Value Prelude.Text
  -> S3LocationProperty
     -> ValueList Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> ValueList Prelude.Text -> Application
mkApplication
  appBlockArn
  iconS3Location
  instanceFamilies
  launchPath
  name
  platforms
  = Application
      {appBlockArn = appBlockArn, iconS3Location = iconS3Location,
       instanceFamilies = instanceFamilies, launchPath = launchPath,
       name = name, platforms = platforms,
       attributesToDelete = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       launchParameters = Prelude.Nothing, tags = Prelude.Nothing,
       workingDirectory = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppBlockArn" JSON..= appBlockArn,
                            "IconS3Location" JSON..= iconS3Location,
                            "InstanceFamilies" JSON..= instanceFamilies,
                            "LaunchPath" JSON..= launchPath, "Name" JSON..= name,
                            "Platforms" JSON..= platforms]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributesToDelete" Prelude.<$> attributesToDelete,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "LaunchParameters" Prelude.<$> launchParameters,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppBlockArn" JSON..= appBlockArn,
               "IconS3Location" JSON..= iconS3Location,
               "InstanceFamilies" JSON..= instanceFamilies,
               "LaunchPath" JSON..= launchPath, "Name" JSON..= name,
               "Platforms" JSON..= platforms]
              (Prelude.catMaybes
                 [(JSON..=) "AttributesToDelete" Prelude.<$> attributesToDelete,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "LaunchParameters" Prelude.<$> launchParameters,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory])))
instance Property "AppBlockArn" Application where
  type PropertyType "AppBlockArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {appBlockArn = newValue, ..}
instance Property "AttributesToDelete" Application where
  type PropertyType "AttributesToDelete" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {attributesToDelete = Prelude.pure newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Application where
  type PropertyType "DisplayName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {displayName = Prelude.pure newValue, ..}
instance Property "IconS3Location" Application where
  type PropertyType "IconS3Location" Application = S3LocationProperty
  set newValue Application {..}
    = Application {iconS3Location = newValue, ..}
instance Property "InstanceFamilies" Application where
  type PropertyType "InstanceFamilies" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {instanceFamilies = newValue, ..}
instance Property "LaunchParameters" Application where
  type PropertyType "LaunchParameters" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {launchParameters = Prelude.pure newValue, ..}
instance Property "LaunchPath" Application where
  type PropertyType "LaunchPath" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {launchPath = newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Platforms" Application where
  type PropertyType "Platforms" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {platforms = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}
instance Property "WorkingDirectory" Application where
  type PropertyType "WorkingDirectory" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {workingDirectory = Prelude.pure newValue, ..}