module Stratosphere.Cognito.UserPoolClient.TokenValidityUnitsProperty (
        TokenValidityUnitsProperty(..), mkTokenValidityUnitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TokenValidityUnitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html>
    TokenValidityUnitsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-accesstoken>
                                accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-idtoken>
                                idToken :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-refreshtoken>
                                refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTokenValidityUnitsProperty :: TokenValidityUnitsProperty
mkTokenValidityUnitsProperty
  = TokenValidityUnitsProperty
      {haddock_workaround_ = (), accessToken = Prelude.Nothing,
       idToken = Prelude.Nothing, refreshToken = Prelude.Nothing}
instance ToResourceProperties TokenValidityUnitsProperty where
  toResourceProperties TokenValidityUnitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient.TokenValidityUnits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "IdToken" Prelude.<$> idToken,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON TokenValidityUnitsProperty where
  toJSON TokenValidityUnitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "IdToken" Prelude.<$> idToken,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" TokenValidityUnitsProperty where
  type PropertyType "AccessToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "IdToken" TokenValidityUnitsProperty where
  type PropertyType "IdToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty {idToken = Prelude.pure newValue, ..}
instance Property "RefreshToken" TokenValidityUnitsProperty where
  type PropertyType "RefreshToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty
        {refreshToken = Prelude.pure newValue, ..}