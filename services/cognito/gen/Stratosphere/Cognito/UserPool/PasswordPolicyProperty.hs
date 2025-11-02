module Stratosphere.Cognito.UserPool.PasswordPolicyProperty (
        PasswordPolicyProperty(..), mkPasswordPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PasswordPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html>
    PasswordPolicyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-minimumlength>
                            minimumLength :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-passwordhistorysize>
                            passwordHistorySize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirelowercase>
                            requireLowercase :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirenumbers>
                            requireNumbers :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requiresymbols>
                            requireSymbols :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requireuppercase>
                            requireUppercase :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-temporarypasswordvaliditydays>
                            temporaryPasswordValidityDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPasswordPolicyProperty :: PasswordPolicyProperty
mkPasswordPolicyProperty
  = PasswordPolicyProperty
      {haddock_workaround_ = (), minimumLength = Prelude.Nothing,
       passwordHistorySize = Prelude.Nothing,
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
                            (JSON..=) "PasswordHistorySize" Prelude.<$> passwordHistorySize,
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
               (JSON..=) "PasswordHistorySize" Prelude.<$> passwordHistorySize,
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
instance Property "PasswordHistorySize" PasswordPolicyProperty where
  type PropertyType "PasswordHistorySize" PasswordPolicyProperty = Value Prelude.Integer
  set newValue PasswordPolicyProperty {..}
    = PasswordPolicyProperty
        {passwordHistorySize = Prelude.pure newValue, ..}
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