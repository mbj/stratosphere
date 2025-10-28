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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-appblockarn>
                 appBlockArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-attributestodelete>
                 attributesToDelete :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-displayname>
                 displayName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-icons3location>
                 iconS3Location :: S3LocationProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-instancefamilies>
                 instanceFamilies :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-launchparameters>
                 launchParameters :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-launchpath>
                 launchPath :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-platforms>
                 platforms :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-application.html#cfn-appstream-application-workingdirectory>
                 workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), appBlockArn = appBlockArn,
       iconS3Location = iconS3Location,
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