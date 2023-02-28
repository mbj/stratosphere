module Stratosphere.ElastiCache.User.AuthenticationModeProperty (
        AuthenticationModeProperty(..), mkAuthenticationModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationModeProperty
  = AuthenticationModeProperty {passwords :: (Prelude.Maybe (ValueList Prelude.Text)),
                                type' :: (Value Prelude.Text)}
mkAuthenticationModeProperty ::
  Value Prelude.Text -> AuthenticationModeProperty
mkAuthenticationModeProperty type'
  = AuthenticationModeProperty
      {type' = type', passwords = Prelude.Nothing}
instance ToResourceProperties AuthenticationModeProperty where
  toResourceProperties AuthenticationModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::User.AuthenticationMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Passwords" Prelude.<$> passwords]))}
instance JSON.ToJSON AuthenticationModeProperty where
  toJSON AuthenticationModeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Passwords" Prelude.<$> passwords])))
instance Property "Passwords" AuthenticationModeProperty where
  type PropertyType "Passwords" AuthenticationModeProperty = ValueList Prelude.Text
  set newValue AuthenticationModeProperty {..}
    = AuthenticationModeProperty
        {passwords = Prelude.pure newValue, ..}
instance Property "Type" AuthenticationModeProperty where
  type PropertyType "Type" AuthenticationModeProperty = Value Prelude.Text
  set newValue AuthenticationModeProperty {..}
    = AuthenticationModeProperty {type' = newValue, ..}