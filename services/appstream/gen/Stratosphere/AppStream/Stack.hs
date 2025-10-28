module Stratosphere.AppStream.Stack (
        module Exports, Stack(..), mkStack
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.Stack.AccessEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Stack.ApplicationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Stack.StorageConnectorProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Stack.StreamingExperienceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Stack.UserSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stack
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html>
    Stack {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-accessendpoints>
           accessEndpoints :: (Prelude.Maybe [AccessEndpointProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-applicationsettings>
           applicationSettings :: (Prelude.Maybe ApplicationSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-attributestodelete>
           attributesToDelete :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-deletestorageconnectors>
           deleteStorageConnectors :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-displayname>
           displayName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-embedhostdomains>
           embedHostDomains :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-feedbackurl>
           feedbackURL :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-redirecturl>
           redirectURL :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-storageconnectors>
           storageConnectors :: (Prelude.Maybe [StorageConnectorProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-streamingexperiencesettings>
           streamingExperienceSettings :: (Prelude.Maybe StreamingExperienceSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-usersettings>
           userSettings :: (Prelude.Maybe [UserSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStack :: Stack
mkStack
  = Stack
      {haddock_workaround_ = (), accessEndpoints = Prelude.Nothing,
       applicationSettings = Prelude.Nothing,
       attributesToDelete = Prelude.Nothing,
       deleteStorageConnectors = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       embedHostDomains = Prelude.Nothing, feedbackURL = Prelude.Nothing,
       name = Prelude.Nothing, redirectURL = Prelude.Nothing,
       storageConnectors = Prelude.Nothing,
       streamingExperienceSettings = Prelude.Nothing,
       tags = Prelude.Nothing, userSettings = Prelude.Nothing}
instance ToResourceProperties Stack where
  toResourceProperties Stack {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
                            (JSON..=) "ApplicationSettings" Prelude.<$> applicationSettings,
                            (JSON..=) "AttributesToDelete" Prelude.<$> attributesToDelete,
                            (JSON..=) "DeleteStorageConnectors"
                              Prelude.<$> deleteStorageConnectors,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "EmbedHostDomains" Prelude.<$> embedHostDomains,
                            (JSON..=) "FeedbackURL" Prelude.<$> feedbackURL,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RedirectURL" Prelude.<$> redirectURL,
                            (JSON..=) "StorageConnectors" Prelude.<$> storageConnectors,
                            (JSON..=) "StreamingExperienceSettings"
                              Prelude.<$> streamingExperienceSettings,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "UserSettings" Prelude.<$> userSettings])}
instance JSON.ToJSON Stack where
  toJSON Stack {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
               (JSON..=) "ApplicationSettings" Prelude.<$> applicationSettings,
               (JSON..=) "AttributesToDelete" Prelude.<$> attributesToDelete,
               (JSON..=) "DeleteStorageConnectors"
                 Prelude.<$> deleteStorageConnectors,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "EmbedHostDomains" Prelude.<$> embedHostDomains,
               (JSON..=) "FeedbackURL" Prelude.<$> feedbackURL,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RedirectURL" Prelude.<$> redirectURL,
               (JSON..=) "StorageConnectors" Prelude.<$> storageConnectors,
               (JSON..=) "StreamingExperienceSettings"
                 Prelude.<$> streamingExperienceSettings,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UserSettings" Prelude.<$> userSettings]))
instance Property "AccessEndpoints" Stack where
  type PropertyType "AccessEndpoints" Stack = [AccessEndpointProperty]
  set newValue Stack {..}
    = Stack {accessEndpoints = Prelude.pure newValue, ..}
instance Property "ApplicationSettings" Stack where
  type PropertyType "ApplicationSettings" Stack = ApplicationSettingsProperty
  set newValue Stack {..}
    = Stack {applicationSettings = Prelude.pure newValue, ..}
instance Property "AttributesToDelete" Stack where
  type PropertyType "AttributesToDelete" Stack = ValueList Prelude.Text
  set newValue Stack {..}
    = Stack {attributesToDelete = Prelude.pure newValue, ..}
instance Property "DeleteStorageConnectors" Stack where
  type PropertyType "DeleteStorageConnectors" Stack = Value Prelude.Bool
  set newValue Stack {..}
    = Stack {deleteStorageConnectors = Prelude.pure newValue, ..}
instance Property "Description" Stack where
  type PropertyType "Description" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Stack where
  type PropertyType "DisplayName" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {displayName = Prelude.pure newValue, ..}
instance Property "EmbedHostDomains" Stack where
  type PropertyType "EmbedHostDomains" Stack = ValueList Prelude.Text
  set newValue Stack {..}
    = Stack {embedHostDomains = Prelude.pure newValue, ..}
instance Property "FeedbackURL" Stack where
  type PropertyType "FeedbackURL" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {feedbackURL = Prelude.pure newValue, ..}
instance Property "Name" Stack where
  type PropertyType "Name" Stack = Value Prelude.Text
  set newValue Stack {..} = Stack {name = Prelude.pure newValue, ..}
instance Property "RedirectURL" Stack where
  type PropertyType "RedirectURL" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {redirectURL = Prelude.pure newValue, ..}
instance Property "StorageConnectors" Stack where
  type PropertyType "StorageConnectors" Stack = [StorageConnectorProperty]
  set newValue Stack {..}
    = Stack {storageConnectors = Prelude.pure newValue, ..}
instance Property "StreamingExperienceSettings" Stack where
  type PropertyType "StreamingExperienceSettings" Stack = StreamingExperienceSettingsProperty
  set newValue Stack {..}
    = Stack {streamingExperienceSettings = Prelude.pure newValue, ..}
instance Property "Tags" Stack where
  type PropertyType "Tags" Stack = [Tag]
  set newValue Stack {..} = Stack {tags = Prelude.pure newValue, ..}
instance Property "UserSettings" Stack where
  type PropertyType "UserSettings" Stack = [UserSettingProperty]
  set newValue Stack {..}
    = Stack {userSettings = Prelude.pure newValue, ..}