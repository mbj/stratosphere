module Stratosphere.SSO.Application.SignInOptionsProperty (
        SignInOptionsProperty(..), mkSignInOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignInOptionsProperty
  = SignInOptionsProperty {applicationUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           origin :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignInOptionsProperty ::
  Value Prelude.Text -> SignInOptionsProperty
mkSignInOptionsProperty origin
  = SignInOptionsProperty
      {origin = origin, applicationUrl = Prelude.Nothing}
instance ToResourceProperties SignInOptionsProperty where
  toResourceProperties SignInOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::Application.SignInOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Origin" JSON..= origin]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationUrl" Prelude.<$> applicationUrl]))}
instance JSON.ToJSON SignInOptionsProperty where
  toJSON SignInOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Origin" JSON..= origin]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationUrl" Prelude.<$> applicationUrl])))
instance Property "ApplicationUrl" SignInOptionsProperty where
  type PropertyType "ApplicationUrl" SignInOptionsProperty = Value Prelude.Text
  set newValue SignInOptionsProperty {..}
    = SignInOptionsProperty
        {applicationUrl = Prelude.pure newValue, ..}
instance Property "Origin" SignInOptionsProperty where
  type PropertyType "Origin" SignInOptionsProperty = Value Prelude.Text
  set newValue SignInOptionsProperty {..}
    = SignInOptionsProperty {origin = newValue, ..}