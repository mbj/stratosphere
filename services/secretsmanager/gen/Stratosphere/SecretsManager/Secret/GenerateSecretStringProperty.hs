module Stratosphere.SecretsManager.Secret.GenerateSecretStringProperty (
        GenerateSecretStringProperty(..), mkGenerateSecretStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GenerateSecretStringProperty
  = GenerateSecretStringProperty {excludeCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                                  excludeLowercase :: (Prelude.Maybe (Value Prelude.Bool)),
                                  excludeNumbers :: (Prelude.Maybe (Value Prelude.Bool)),
                                  excludePunctuation :: (Prelude.Maybe (Value Prelude.Bool)),
                                  excludeUppercase :: (Prelude.Maybe (Value Prelude.Bool)),
                                  generateStringKey :: (Prelude.Maybe (Value Prelude.Text)),
                                  includeSpace :: (Prelude.Maybe (Value Prelude.Bool)),
                                  passwordLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                  requireEachIncludedType :: (Prelude.Maybe (Value Prelude.Bool)),
                                  secretStringTemplate :: (Prelude.Maybe (Value Prelude.Text))}
mkGenerateSecretStringProperty :: GenerateSecretStringProperty
mkGenerateSecretStringProperty
  = GenerateSecretStringProperty
      {excludeCharacters = Prelude.Nothing,
       excludeLowercase = Prelude.Nothing,
       excludeNumbers = Prelude.Nothing,
       excludePunctuation = Prelude.Nothing,
       excludeUppercase = Prelude.Nothing,
       generateStringKey = Prelude.Nothing,
       includeSpace = Prelude.Nothing, passwordLength = Prelude.Nothing,
       requireEachIncludedType = Prelude.Nothing,
       secretStringTemplate = Prelude.Nothing}
instance ToResourceProperties GenerateSecretStringProperty where
  toResourceProperties GenerateSecretStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::Secret.GenerateSecretString",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeCharacters" Prelude.<$> excludeCharacters,
                            (JSON..=) "ExcludeLowercase" Prelude.<$> excludeLowercase,
                            (JSON..=) "ExcludeNumbers" Prelude.<$> excludeNumbers,
                            (JSON..=) "ExcludePunctuation" Prelude.<$> excludePunctuation,
                            (JSON..=) "ExcludeUppercase" Prelude.<$> excludeUppercase,
                            (JSON..=) "GenerateStringKey" Prelude.<$> generateStringKey,
                            (JSON..=) "IncludeSpace" Prelude.<$> includeSpace,
                            (JSON..=) "PasswordLength" Prelude.<$> passwordLength,
                            (JSON..=) "RequireEachIncludedType"
                              Prelude.<$> requireEachIncludedType,
                            (JSON..=) "SecretStringTemplate"
                              Prelude.<$> secretStringTemplate])}
instance JSON.ToJSON GenerateSecretStringProperty where
  toJSON GenerateSecretStringProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeCharacters" Prelude.<$> excludeCharacters,
               (JSON..=) "ExcludeLowercase" Prelude.<$> excludeLowercase,
               (JSON..=) "ExcludeNumbers" Prelude.<$> excludeNumbers,
               (JSON..=) "ExcludePunctuation" Prelude.<$> excludePunctuation,
               (JSON..=) "ExcludeUppercase" Prelude.<$> excludeUppercase,
               (JSON..=) "GenerateStringKey" Prelude.<$> generateStringKey,
               (JSON..=) "IncludeSpace" Prelude.<$> includeSpace,
               (JSON..=) "PasswordLength" Prelude.<$> passwordLength,
               (JSON..=) "RequireEachIncludedType"
                 Prelude.<$> requireEachIncludedType,
               (JSON..=) "SecretStringTemplate"
                 Prelude.<$> secretStringTemplate]))
instance Property "ExcludeCharacters" GenerateSecretStringProperty where
  type PropertyType "ExcludeCharacters" GenerateSecretStringProperty = Value Prelude.Text
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {excludeCharacters = Prelude.pure newValue, ..}
instance Property "ExcludeLowercase" GenerateSecretStringProperty where
  type PropertyType "ExcludeLowercase" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {excludeLowercase = Prelude.pure newValue, ..}
instance Property "ExcludeNumbers" GenerateSecretStringProperty where
  type PropertyType "ExcludeNumbers" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {excludeNumbers = Prelude.pure newValue, ..}
instance Property "ExcludePunctuation" GenerateSecretStringProperty where
  type PropertyType "ExcludePunctuation" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {excludePunctuation = Prelude.pure newValue, ..}
instance Property "ExcludeUppercase" GenerateSecretStringProperty where
  type PropertyType "ExcludeUppercase" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {excludeUppercase = Prelude.pure newValue, ..}
instance Property "GenerateStringKey" GenerateSecretStringProperty where
  type PropertyType "GenerateStringKey" GenerateSecretStringProperty = Value Prelude.Text
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {generateStringKey = Prelude.pure newValue, ..}
instance Property "IncludeSpace" GenerateSecretStringProperty where
  type PropertyType "IncludeSpace" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {includeSpace = Prelude.pure newValue, ..}
instance Property "PasswordLength" GenerateSecretStringProperty where
  type PropertyType "PasswordLength" GenerateSecretStringProperty = Value Prelude.Integer
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {passwordLength = Prelude.pure newValue, ..}
instance Property "RequireEachIncludedType" GenerateSecretStringProperty where
  type PropertyType "RequireEachIncludedType" GenerateSecretStringProperty = Value Prelude.Bool
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {requireEachIncludedType = Prelude.pure newValue, ..}
instance Property "SecretStringTemplate" GenerateSecretStringProperty where
  type PropertyType "SecretStringTemplate" GenerateSecretStringProperty = Value Prelude.Text
  set newValue GenerateSecretStringProperty {..}
    = GenerateSecretStringProperty
        {secretStringTemplate = Prelude.pure newValue, ..}