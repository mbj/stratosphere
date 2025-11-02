module Stratosphere.Shield.ProactiveEngagement.EmergencyContactProperty (
        EmergencyContactProperty(..), mkEmergencyContactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmergencyContactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-proactiveengagement-emergencycontact.html>
    EmergencyContactProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-proactiveengagement-emergencycontact.html#cfn-shield-proactiveengagement-emergencycontact-contactnotes>
                              contactNotes :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-proactiveengagement-emergencycontact.html#cfn-shield-proactiveengagement-emergencycontact-emailaddress>
                              emailAddress :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-proactiveengagement-emergencycontact.html#cfn-shield-proactiveengagement-emergencycontact-phonenumber>
                              phoneNumber :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmergencyContactProperty ::
  Value Prelude.Text -> EmergencyContactProperty
mkEmergencyContactProperty emailAddress
  = EmergencyContactProperty
      {haddock_workaround_ = (), emailAddress = emailAddress,
       contactNotes = Prelude.Nothing, phoneNumber = Prelude.Nothing}
instance ToResourceProperties EmergencyContactProperty where
  toResourceProperties EmergencyContactProperty {..}
    = ResourceProperties
        {awsType = "AWS::Shield::ProactiveEngagement.EmergencyContact",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EmailAddress" JSON..= emailAddress]
                           (Prelude.catMaybes
                              [(JSON..=) "ContactNotes" Prelude.<$> contactNotes,
                               (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber]))}
instance JSON.ToJSON EmergencyContactProperty where
  toJSON EmergencyContactProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EmailAddress" JSON..= emailAddress]
              (Prelude.catMaybes
                 [(JSON..=) "ContactNotes" Prelude.<$> contactNotes,
                  (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber])))
instance Property "ContactNotes" EmergencyContactProperty where
  type PropertyType "ContactNotes" EmergencyContactProperty = Value Prelude.Text
  set newValue EmergencyContactProperty {..}
    = EmergencyContactProperty
        {contactNotes = Prelude.pure newValue, ..}
instance Property "EmailAddress" EmergencyContactProperty where
  type PropertyType "EmailAddress" EmergencyContactProperty = Value Prelude.Text
  set newValue EmergencyContactProperty {..}
    = EmergencyContactProperty {emailAddress = newValue, ..}
instance Property "PhoneNumber" EmergencyContactProperty where
  type PropertyType "PhoneNumber" EmergencyContactProperty = Value Prelude.Text
  set newValue EmergencyContactProperty {..}
    = EmergencyContactProperty
        {phoneNumber = Prelude.pure newValue, ..}