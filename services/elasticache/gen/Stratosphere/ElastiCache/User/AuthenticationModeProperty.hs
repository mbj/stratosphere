module Stratosphere.ElastiCache.User.AuthenticationModeProperty (
        AuthenticationModeProperty(..), mkAuthenticationModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-user-authenticationmode.html>
    AuthenticationModeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-user-authenticationmode.html#cfn-elasticache-user-authenticationmode-passwords>
                                passwords :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-user-authenticationmode.html#cfn-elasticache-user-authenticationmode-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationModeProperty ::
  Value Prelude.Text -> AuthenticationModeProperty
mkAuthenticationModeProperty type'
  = AuthenticationModeProperty
      {haddock_workaround_ = (), type' = type',
       passwords = Prelude.Nothing}
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