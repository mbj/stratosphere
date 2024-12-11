module Stratosphere.DataZone.UserProfile.UserProfileDetailsProperty (
        module Exports, UserProfileDetailsProperty(..),
        mkUserProfileDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.UserProfile.IamUserProfileDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.UserProfile.SsoUserProfileDetailsProperty as Exports
import Stratosphere.ResourceProperties
data UserProfileDetailsProperty
  = UserProfileDetailsProperty {iam :: (Prelude.Maybe IamUserProfileDetailsProperty),
                                sso :: (Prelude.Maybe SsoUserProfileDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProfileDetailsProperty :: UserProfileDetailsProperty
mkUserProfileDetailsProperty
  = UserProfileDetailsProperty
      {iam = Prelude.Nothing, sso = Prelude.Nothing}
instance ToResourceProperties UserProfileDetailsProperty where
  toResourceProperties UserProfileDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::UserProfile.UserProfileDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iam" Prelude.<$> iam,
                            (JSON..=) "Sso" Prelude.<$> sso])}
instance JSON.ToJSON UserProfileDetailsProperty where
  toJSON UserProfileDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iam" Prelude.<$> iam,
               (JSON..=) "Sso" Prelude.<$> sso]))
instance Property "Iam" UserProfileDetailsProperty where
  type PropertyType "Iam" UserProfileDetailsProperty = IamUserProfileDetailsProperty
  set newValue UserProfileDetailsProperty {..}
    = UserProfileDetailsProperty {iam = Prelude.pure newValue, ..}
instance Property "Sso" UserProfileDetailsProperty where
  type PropertyType "Sso" UserProfileDetailsProperty = SsoUserProfileDetailsProperty
  set newValue UserProfileDetailsProperty {..}
    = UserProfileDetailsProperty {sso = Prelude.pure newValue, ..}