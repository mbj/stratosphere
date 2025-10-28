module Stratosphere.MemoryDB.User.AuthenticationModeProperty (
        AuthenticationModeProperty(..), mkAuthenticationModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-user-authenticationmode.html>
    AuthenticationModeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-user-authenticationmode.html#cfn-memorydb-user-authenticationmode-passwords>
                                passwords :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-user-authenticationmode.html#cfn-memorydb-user-authenticationmode-type>
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationModeProperty :: AuthenticationModeProperty
mkAuthenticationModeProperty
  = AuthenticationModeProperty
      {haddock_workaround_ = (), passwords = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties AuthenticationModeProperty where
  toResourceProperties AuthenticationModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::User.AuthenticationMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Passwords" Prelude.<$> passwords,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON AuthenticationModeProperty where
  toJSON AuthenticationModeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Passwords" Prelude.<$> passwords,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Passwords" AuthenticationModeProperty where
  type PropertyType "Passwords" AuthenticationModeProperty = ValueList Prelude.Text
  set newValue AuthenticationModeProperty {..}
    = AuthenticationModeProperty
        {passwords = Prelude.pure newValue, ..}
instance Property "Type" AuthenticationModeProperty where
  type PropertyType "Type" AuthenticationModeProperty = Value Prelude.Text
  set newValue AuthenticationModeProperty {..}
    = AuthenticationModeProperty {type' = Prelude.pure newValue, ..}