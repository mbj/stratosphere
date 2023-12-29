module Stratosphere.Connect.User.UserPhoneConfigProperty (
        UserPhoneConfigProperty(..), mkUserPhoneConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPhoneConfigProperty
  = UserPhoneConfigProperty {afterContactWorkTimeLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                             autoAccept :: (Prelude.Maybe (Value Prelude.Bool)),
                             deskPhoneNumber :: (Prelude.Maybe (Value Prelude.Text)),
                             phoneType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPhoneConfigProperty ::
  Value Prelude.Text -> UserPhoneConfigProperty
mkUserPhoneConfigProperty phoneType
  = UserPhoneConfigProperty
      {phoneType = phoneType,
       afterContactWorkTimeLimit = Prelude.Nothing,
       autoAccept = Prelude.Nothing, deskPhoneNumber = Prelude.Nothing}
instance ToResourceProperties UserPhoneConfigProperty where
  toResourceProperties UserPhoneConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::User.UserPhoneConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PhoneType" JSON..= phoneType]
                           (Prelude.catMaybes
                              [(JSON..=) "AfterContactWorkTimeLimit"
                                 Prelude.<$> afterContactWorkTimeLimit,
                               (JSON..=) "AutoAccept" Prelude.<$> autoAccept,
                               (JSON..=) "DeskPhoneNumber" Prelude.<$> deskPhoneNumber]))}
instance JSON.ToJSON UserPhoneConfigProperty where
  toJSON UserPhoneConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PhoneType" JSON..= phoneType]
              (Prelude.catMaybes
                 [(JSON..=) "AfterContactWorkTimeLimit"
                    Prelude.<$> afterContactWorkTimeLimit,
                  (JSON..=) "AutoAccept" Prelude.<$> autoAccept,
                  (JSON..=) "DeskPhoneNumber" Prelude.<$> deskPhoneNumber])))
instance Property "AfterContactWorkTimeLimit" UserPhoneConfigProperty where
  type PropertyType "AfterContactWorkTimeLimit" UserPhoneConfigProperty = Value Prelude.Integer
  set newValue UserPhoneConfigProperty {..}
    = UserPhoneConfigProperty
        {afterContactWorkTimeLimit = Prelude.pure newValue, ..}
instance Property "AutoAccept" UserPhoneConfigProperty where
  type PropertyType "AutoAccept" UserPhoneConfigProperty = Value Prelude.Bool
  set newValue UserPhoneConfigProperty {..}
    = UserPhoneConfigProperty {autoAccept = Prelude.pure newValue, ..}
instance Property "DeskPhoneNumber" UserPhoneConfigProperty where
  type PropertyType "DeskPhoneNumber" UserPhoneConfigProperty = Value Prelude.Text
  set newValue UserPhoneConfigProperty {..}
    = UserPhoneConfigProperty
        {deskPhoneNumber = Prelude.pure newValue, ..}
instance Property "PhoneType" UserPhoneConfigProperty where
  type PropertyType "PhoneType" UserPhoneConfigProperty = Value Prelude.Text
  set newValue UserPhoneConfigProperty {..}
    = UserPhoneConfigProperty {phoneType = newValue, ..}