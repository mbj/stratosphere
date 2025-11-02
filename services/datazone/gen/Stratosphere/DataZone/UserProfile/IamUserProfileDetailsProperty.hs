module Stratosphere.DataZone.UserProfile.IamUserProfileDetailsProperty (
        IamUserProfileDetailsProperty(..), mkIamUserProfileDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamUserProfileDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-iamuserprofiledetails.html>
    IamUserProfileDetailsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-iamuserprofiledetails.html#cfn-datazone-userprofile-iamuserprofiledetails-arn>
                                   arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamUserProfileDetailsProperty :: IamUserProfileDetailsProperty
mkIamUserProfileDetailsProperty
  = IamUserProfileDetailsProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing}
instance ToResourceProperties IamUserProfileDetailsProperty where
  toResourceProperties IamUserProfileDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::UserProfile.IamUserProfileDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON IamUserProfileDetailsProperty where
  toJSON IamUserProfileDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" IamUserProfileDetailsProperty where
  type PropertyType "Arn" IamUserProfileDetailsProperty = Value Prelude.Text
  set newValue IamUserProfileDetailsProperty {..}
    = IamUserProfileDetailsProperty {arn = Prelude.pure newValue, ..}