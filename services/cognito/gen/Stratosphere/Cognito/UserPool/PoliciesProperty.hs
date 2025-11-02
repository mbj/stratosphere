module Stratosphere.Cognito.UserPool.PoliciesProperty (
        module Exports, PoliciesProperty(..), mkPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.PasswordPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.SignInPolicyProperty as Exports
import Stratosphere.ResourceProperties
data PoliciesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html>
    PoliciesProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html#cfn-cognito-userpool-policies-passwordpolicy>
                      passwordPolicy :: (Prelude.Maybe PasswordPolicyProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html#cfn-cognito-userpool-policies-signinpolicy>
                      signInPolicy :: (Prelude.Maybe SignInPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPoliciesProperty :: PoliciesProperty
mkPoliciesProperty
  = PoliciesProperty
      {haddock_workaround_ = (), passwordPolicy = Prelude.Nothing,
       signInPolicy = Prelude.Nothing}
instance ToResourceProperties PoliciesProperty where
  toResourceProperties PoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.Policies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordPolicy" Prelude.<$> passwordPolicy,
                            (JSON..=) "SignInPolicy" Prelude.<$> signInPolicy])}
instance JSON.ToJSON PoliciesProperty where
  toJSON PoliciesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordPolicy" Prelude.<$> passwordPolicy,
               (JSON..=) "SignInPolicy" Prelude.<$> signInPolicy]))
instance Property "PasswordPolicy" PoliciesProperty where
  type PropertyType "PasswordPolicy" PoliciesProperty = PasswordPolicyProperty
  set newValue PoliciesProperty {..}
    = PoliciesProperty {passwordPolicy = Prelude.pure newValue, ..}
instance Property "SignInPolicy" PoliciesProperty where
  type PropertyType "SignInPolicy" PoliciesProperty = SignInPolicyProperty
  set newValue PoliciesProperty {..}
    = PoliciesProperty {signInPolicy = Prelude.pure newValue, ..}