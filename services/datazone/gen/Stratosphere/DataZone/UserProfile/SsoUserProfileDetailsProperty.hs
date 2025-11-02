module Stratosphere.DataZone.UserProfile.SsoUserProfileDetailsProperty (
        SsoUserProfileDetailsProperty(..), mkSsoUserProfileDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsoUserProfileDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-ssouserprofiledetails.html>
    SsoUserProfileDetailsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-ssouserprofiledetails.html#cfn-datazone-userprofile-ssouserprofiledetails-firstname>
                                   firstName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-ssouserprofiledetails.html#cfn-datazone-userprofile-ssouserprofiledetails-lastname>
                                   lastName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-ssouserprofiledetails.html#cfn-datazone-userprofile-ssouserprofiledetails-username>
                                   username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsoUserProfileDetailsProperty :: SsoUserProfileDetailsProperty
mkSsoUserProfileDetailsProperty
  = SsoUserProfileDetailsProperty
      {haddock_workaround_ = (), firstName = Prelude.Nothing,
       lastName = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties SsoUserProfileDetailsProperty where
  toResourceProperties SsoUserProfileDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::UserProfile.SsoUserProfileDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "LastName" Prelude.<$> lastName,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON SsoUserProfileDetailsProperty where
  toJSON SsoUserProfileDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "LastName" Prelude.<$> lastName,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "FirstName" SsoUserProfileDetailsProperty where
  type PropertyType "FirstName" SsoUserProfileDetailsProperty = Value Prelude.Text
  set newValue SsoUserProfileDetailsProperty {..}
    = SsoUserProfileDetailsProperty
        {firstName = Prelude.pure newValue, ..}
instance Property "LastName" SsoUserProfileDetailsProperty where
  type PropertyType "LastName" SsoUserProfileDetailsProperty = Value Prelude.Text
  set newValue SsoUserProfileDetailsProperty {..}
    = SsoUserProfileDetailsProperty
        {lastName = Prelude.pure newValue, ..}
instance Property "Username" SsoUserProfileDetailsProperty where
  type PropertyType "Username" SsoUserProfileDetailsProperty = Value Prelude.Text
  set newValue SsoUserProfileDetailsProperty {..}
    = SsoUserProfileDetailsProperty
        {username = Prelude.pure newValue, ..}