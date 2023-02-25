module Stratosphere.IAM.User.LoginProfileProperty (
        LoginProfileProperty(..), mkLoginProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoginProfileProperty
  = LoginProfileProperty {password :: (Value Prelude.Text),
                          passwordResetRequired :: (Prelude.Maybe (Value Prelude.Bool))}
mkLoginProfileProperty ::
  Value Prelude.Text -> LoginProfileProperty
mkLoginProfileProperty password
  = LoginProfileProperty
      {password = password, passwordResetRequired = Prelude.Nothing}
instance ToResourceProperties LoginProfileProperty where
  toResourceProperties LoginProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::IAM::User.LoginProfile",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Password" JSON..= password]
                           (Prelude.catMaybes
                              [(JSON..=) "PasswordResetRequired"
                                 Prelude.<$> passwordResetRequired]))}
instance JSON.ToJSON LoginProfileProperty where
  toJSON LoginProfileProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Password" JSON..= password]
              (Prelude.catMaybes
                 [(JSON..=) "PasswordResetRequired"
                    Prelude.<$> passwordResetRequired])))
instance Property "Password" LoginProfileProperty where
  type PropertyType "Password" LoginProfileProperty = Value Prelude.Text
  set newValue LoginProfileProperty {..}
    = LoginProfileProperty {password = newValue, ..}
instance Property "PasswordResetRequired" LoginProfileProperty where
  type PropertyType "PasswordResetRequired" LoginProfileProperty = Value Prelude.Bool
  set newValue LoginProfileProperty {..}
    = LoginProfileProperty
        {passwordResetRequired = Prelude.pure newValue, ..}