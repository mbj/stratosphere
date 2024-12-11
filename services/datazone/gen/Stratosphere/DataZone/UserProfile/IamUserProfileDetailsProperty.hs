module Stratosphere.DataZone.UserProfile.IamUserProfileDetailsProperty (
        IamUserProfileDetailsProperty(..), mkIamUserProfileDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamUserProfileDetailsProperty
  = IamUserProfileDetailsProperty {arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamUserProfileDetailsProperty :: IamUserProfileDetailsProperty
mkIamUserProfileDetailsProperty
  = IamUserProfileDetailsProperty {arn = Prelude.Nothing}
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
  set newValue IamUserProfileDetailsProperty {}
    = IamUserProfileDetailsProperty {arn = Prelude.pure newValue, ..}