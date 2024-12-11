module Stratosphere.Cognito.UserPool.SignInPolicyProperty (
        SignInPolicyProperty(..), mkSignInPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignInPolicyProperty
  = SignInPolicyProperty {allowedFirstAuthFactors :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignInPolicyProperty :: SignInPolicyProperty
mkSignInPolicyProperty
  = SignInPolicyProperty {allowedFirstAuthFactors = Prelude.Nothing}
instance ToResourceProperties SignInPolicyProperty where
  toResourceProperties SignInPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.SignInPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedFirstAuthFactors"
                              Prelude.<$> allowedFirstAuthFactors])}
instance JSON.ToJSON SignInPolicyProperty where
  toJSON SignInPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedFirstAuthFactors"
                 Prelude.<$> allowedFirstAuthFactors]))
instance Property "AllowedFirstAuthFactors" SignInPolicyProperty where
  type PropertyType "AllowedFirstAuthFactors" SignInPolicyProperty = ValueList Prelude.Text
  set newValue SignInPolicyProperty {}
    = SignInPolicyProperty
        {allowedFirstAuthFactors = Prelude.pure newValue, ..}