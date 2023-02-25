module Stratosphere.Cognito.UserPool.PoliciesProperty (
        module Exports, PoliciesProperty(..), mkPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.PasswordPolicyProperty as Exports
import Stratosphere.ResourceProperties
data PoliciesProperty
  = PoliciesProperty {passwordPolicy :: (Prelude.Maybe PasswordPolicyProperty)}
mkPoliciesProperty :: PoliciesProperty
mkPoliciesProperty
  = PoliciesProperty {passwordPolicy = Prelude.Nothing}
instance ToResourceProperties PoliciesProperty where
  toResourceProperties PoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.Policies",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordPolicy" Prelude.<$> passwordPolicy])}
instance JSON.ToJSON PoliciesProperty where
  toJSON PoliciesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordPolicy" Prelude.<$> passwordPolicy]))
instance Property "PasswordPolicy" PoliciesProperty where
  type PropertyType "PasswordPolicy" PoliciesProperty = PasswordPolicyProperty
  set newValue PoliciesProperty {}
    = PoliciesProperty {passwordPolicy = Prelude.pure newValue, ..}