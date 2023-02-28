module Stratosphere.SageMaker.UserProfile (
        module Exports, UserProfile(..), mkUserProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.UserSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserProfile
  = UserProfile {domainId :: (Value Prelude.Text),
                 singleSignOnUserIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                 singleSignOnUserValue :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 userProfileName :: (Value Prelude.Text),
                 userSettings :: (Prelude.Maybe UserSettingsProperty)}
mkUserProfile ::
  Value Prelude.Text -> Value Prelude.Text -> UserProfile
mkUserProfile domainId userProfileName
  = UserProfile
      {domainId = domainId, userProfileName = userProfileName,
       singleSignOnUserIdentifier = Prelude.Nothing,
       singleSignOnUserValue = Prelude.Nothing, tags = Prelude.Nothing,
       userSettings = Prelude.Nothing}
instance ToResourceProperties UserProfile where
  toResourceProperties UserProfile {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainId" JSON..= domainId,
                            "UserProfileName" JSON..= userProfileName]
                           (Prelude.catMaybes
                              [(JSON..=) "SingleSignOnUserIdentifier"
                                 Prelude.<$> singleSignOnUserIdentifier,
                               (JSON..=) "SingleSignOnUserValue"
                                 Prelude.<$> singleSignOnUserValue,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserSettings" Prelude.<$> userSettings]))}
instance JSON.ToJSON UserProfile where
  toJSON UserProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainId" JSON..= domainId,
               "UserProfileName" JSON..= userProfileName]
              (Prelude.catMaybes
                 [(JSON..=) "SingleSignOnUserIdentifier"
                    Prelude.<$> singleSignOnUserIdentifier,
                  (JSON..=) "SingleSignOnUserValue"
                    Prelude.<$> singleSignOnUserValue,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserSettings" Prelude.<$> userSettings])))
instance Property "DomainId" UserProfile where
  type PropertyType "DomainId" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {domainId = newValue, ..}
instance Property "SingleSignOnUserIdentifier" UserProfile where
  type PropertyType "SingleSignOnUserIdentifier" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile
        {singleSignOnUserIdentifier = Prelude.pure newValue, ..}
instance Property "SingleSignOnUserValue" UserProfile where
  type PropertyType "SingleSignOnUserValue" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {singleSignOnUserValue = Prelude.pure newValue, ..}
instance Property "Tags" UserProfile where
  type PropertyType "Tags" UserProfile = [Tag]
  set newValue UserProfile {..}
    = UserProfile {tags = Prelude.pure newValue, ..}
instance Property "UserProfileName" UserProfile where
  type PropertyType "UserProfileName" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {userProfileName = newValue, ..}
instance Property "UserSettings" UserProfile where
  type PropertyType "UserSettings" UserProfile = UserSettingsProperty
  set newValue UserProfile {..}
    = UserProfile {userSettings = Prelude.pure newValue, ..}