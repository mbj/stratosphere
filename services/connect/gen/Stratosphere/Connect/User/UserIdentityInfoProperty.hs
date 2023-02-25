module Stratosphere.Connect.User.UserIdentityInfoProperty (
        UserIdentityInfoProperty(..), mkUserIdentityInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserIdentityInfoProperty
  = UserIdentityInfoProperty {email :: (Prelude.Maybe (Value Prelude.Text)),
                              firstName :: (Prelude.Maybe (Value Prelude.Text)),
                              lastName :: (Prelude.Maybe (Value Prelude.Text)),
                              mobile :: (Prelude.Maybe (Value Prelude.Text)),
                              secondaryEmail :: (Prelude.Maybe (Value Prelude.Text))}
mkUserIdentityInfoProperty :: UserIdentityInfoProperty
mkUserIdentityInfoProperty
  = UserIdentityInfoProperty
      {email = Prelude.Nothing, firstName = Prelude.Nothing,
       lastName = Prelude.Nothing, mobile = Prelude.Nothing,
       secondaryEmail = Prelude.Nothing}
instance ToResourceProperties UserIdentityInfoProperty where
  toResourceProperties UserIdentityInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::User.UserIdentityInfo",
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