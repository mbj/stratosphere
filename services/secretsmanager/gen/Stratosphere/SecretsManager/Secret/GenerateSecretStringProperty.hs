module Stratosphere.SecretsManager.Secret.GenerateSecretStringProperty (
        GenerateSecretStringProperty(..), mkGenerateSecretStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GenerateSecretStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html>
    GenerateSecretStringProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludecharacters>
                                  excludeCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase>
                                  excludeLowercase :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers>
                                  excludeNumbers :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludepunctuation>
                                  excludePunctuation :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase>
                                  excludeUppercase :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-generatestringkey>
                                  generateStringKey :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace>
                                  includeSpace :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-passwordlength>
                                  passwordLength :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype>
                                  requireEachIncludedType :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-secretstringtemplate>
                                  secretStringTemplate :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGenerateSecretStringProperty :: GenerateSecretStringProperty
mkGenerateSecretStringProperty
  = GenerateSecretStringProperty
      {haddock_workaround_ = (), excludeCharacters = Prelude.Nothing,
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