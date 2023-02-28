module Stratosphere.Cognito.UserPool.PasswordPolicyProperty (
        PasswordPolicyProperty(..), mkPasswordPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PasswordPolicyProperty
  = PasswordPolicyProperty {minimumLength :: (Prelude.Maybe (Value Prelude.Integer)),
                            requireLowercase :: (Prelude.Maybe (Value Prelude.Bool)),
                            requireNumbers :: (Prelude.Maybe (Value Prelude.Bool)),
                            requireSymbols :: (Prelude.Maybe (Value Prelude.Bool)),
                            requireUppercase :: (Prelude.Maybe (Value Prelude.Bool)),
                            temporaryPasswordValidityDays :: (Prelude.Maybe (Value Prelude.Integer))}
mkPasswordPolicyProperty :: PasswordPolicyProperty
mkPasswordPolicyProperty
  = PasswordPolicyProperty
      {minimumLength = Prelude.Nothing,
       requireLowercase = Prelude.Nothing,
       requireNumbers = Prelude.Nothing, requireSymbols = Prelude.Nothing,
       requireUppercase = Prelude.Nothing,
       temporaryPasswordValidityDays = Prelude.Nothing}
instance ToResourceProperties PasswordPolicyProperty where
  toResourceProperties PasswordPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.PasswordPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MinimumLength" Prelude.<$> minimumLength,
                            (JSON..=) "RequireLowercase" Prelude.<$> requireLowercase,
                            (JSON..=) "RequireNumbers" Prelude.<$> requireNumbers,
                            (JSON..=) "RequireSymbols" Prelude.<$> requireSymbols,
                            (JSON..=) "RequireUppercase" Prelude.<$> requireUppercase,
                            (JSON..=) "TemporaryPasswordValidityDays"
                              Prelude.<$> temporaryPasswordValidityDays])}
instance JSON.ToJSON PasswordPolicyProperty where
  toJSON PasswordPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MinimumLength" Prelude.<$> minimumLength,
               (JSON..=) "RequireLowercase" Prelude.<$> requireLowercase,
               (JSON..=) "RequireNumbers" Prelude.<$> requireNumbers,
               (JSON..=) "RequireSymbols" Prelude.<$> requireSymbols,
               (JSON..=) "RequireUppercase" Prelude.<$> requireUppercase,
               (JSON..=) "TemporaryPasswordValidityDays"
                 Prelude.<$> temporaryPasswordValidityDays]))
instance Property "MinimumLength" PasswordPolicyProperty where
  type PropertyType "MinimumLength" PasswordPolicyProperty = Value Prelude.Integer
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {minimumLength = Prelude.pure newValue, ..}
instance Property "RequireLowercase" PasswordPolicyProperty where
  type PropertyType "RequireLowercase" PasswordPolicyProperty = Value Prelude.Bool
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {requireLowercase = Prelude.pure newValue, ..}
instance Property "RequireNumbers" PasswordPolicyProperty where
  type PropertyType "RequireNumbers" PasswordPolicyProperty = Value Prelude.Bool
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {requireNumbers = Prelude.pure newValue, ..}
instance Property "RequireSymbols" PasswordPolicyProperty where
  type PropertyType "RequireSymbols" PasswordPolicyProperty = Value Prelude.Bool
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {requireSymbols = Prelude.pure newValue, ..}
instance Property "RequireUppercase" PasswordPolicyProperty where
  type PropertyType "RequireUppercase" PasswordPolicyProperty = Value Prelude.Bool
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {requireUppercase = Prelude.pure newValue, ..}
instance Property "TemporaryPasswordValidityDays" PasswordPolicyProperty where
  type PropertyType "TemporaryPasswordValidityDays" PasswordPolicyProperty = Value Prelude.Integer
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {temporaryPasswordValidityDays = Prelude.pure newValue, ..}