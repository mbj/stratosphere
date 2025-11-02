module Stratosphere.Connect.User.UserIdentityInfoProperty (
        UserIdentityInfoProperty(..), mkUserIdentityInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserIdentityInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html>
    UserIdentityInfoProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html#cfn-connect-user-useridentityinfo-email>
                              email :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html#cfn-connect-user-useridentityinfo-firstname>
                              firstName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html#cfn-connect-user-useridentityinfo-lastname>
                              lastName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html#cfn-connect-user-useridentityinfo-mobile>
                              mobile :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-user-useridentityinfo.html#cfn-connect-user-useridentityinfo-secondaryemail>
                              secondaryEmail :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserIdentityInfoProperty :: UserIdentityInfoProperty
mkUserIdentityInfoProperty
  = UserIdentityInfoProperty
      {haddock_workaround_ = (), email = Prelude.Nothing,
       firstName = Prelude.Nothing, lastName = Prelude.Nothing,
       mobile = Prelude.Nothing, secondaryEmail = Prelude.Nothing}
instance ToResourceProperties UserIdentityInfoProperty where
  toResourceProperties UserIdentityInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::User.UserIdentityInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Email" Prelude.<$> email,
                            (JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "LastName" Prelude.<$> lastName,
                            (JSON..=) "Mobile" Prelude.<$> mobile,
                            (JSON..=) "SecondaryEmail" Prelude.<$> secondaryEmail])}
instance JSON.ToJSON UserIdentityInfoProperty where
  toJSON UserIdentityInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Email" Prelude.<$> email,
               (JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "LastName" Prelude.<$> lastName,
               (JSON..=) "Mobile" Prelude.<$> mobile,
               (JSON..=) "SecondaryEmail" Prelude.<$> secondaryEmail]))
instance Property "Email" UserIdentityInfoProperty where
  type PropertyType "Email" UserIdentityInfoProperty = Value Prelude.Text
  set newValue UserIdentityInfoProperty {..}
    = UserIdentityInfoProperty {email = Prelude.pure newValue, ..}
instance Property "FirstName" UserIdentityInfoProperty where
  type PropertyType "FirstName" UserIdentityInfoProperty = Value Prelude.Text
  set newValue UserIdentityInfoProperty {..}
    = UserIdentityInfoProperty {firstName = Prelude.pure newValue, ..}
instance Property "LastName" UserIdentityInfoProperty where
  type PropertyType "LastName" UserIdentityInfoProperty = Value Prelude.Text
  set newValue UserIdentityInfoProperty {..}
    = UserIdentityInfoProperty {lastName = Prelude.pure newValue, ..}
instance Property "Mobile" UserIdentityInfoProperty where
  type PropertyType "Mobile" UserIdentityInfoProperty = Value Prelude.Text
  set newValue UserIdentityInfoProperty {..}
    = UserIdentityInfoProperty {mobile = Prelude.pure newValue, ..}
instance Property "SecondaryEmail" UserIdentityInfoProperty where
  type PropertyType "SecondaryEmail" UserIdentityInfoProperty = Value Prelude.Text
  set newValue UserIdentityInfoProperty {..}
    = UserIdentityInfoProperty
        {secondaryEmail = Prelude.pure newValue, ..}