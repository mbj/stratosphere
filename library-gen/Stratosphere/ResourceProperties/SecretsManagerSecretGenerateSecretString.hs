{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html

module Stratosphere.ResourceProperties.SecretsManagerSecretGenerateSecretString where

import Stratosphere.ResourceImports


-- | Full data type definition for SecretsManagerSecretGenerateSecretString.
-- See 'secretsManagerSecretGenerateSecretString' for a more convenient
-- constructor.
data SecretsManagerSecretGenerateSecretString =
  SecretsManagerSecretGenerateSecretString
  { _secretsManagerSecretGenerateSecretStringExcludeCharacters :: Maybe (Val Text)
  , _secretsManagerSecretGenerateSecretStringExcludeLowercase :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringExcludeNumbers :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringExcludePunctuation :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringExcludeUppercase :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringGenerateStringKey :: Maybe (Val Text)
  , _secretsManagerSecretGenerateSecretStringIncludeSpace :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringPasswordLength :: Maybe (Val Integer)
  , _secretsManagerSecretGenerateSecretStringRequireEachIncludedType :: Maybe (Val Bool)
  , _secretsManagerSecretGenerateSecretStringSecretStringTemplate :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SecretsManagerSecretGenerateSecretString where
  toJSON SecretsManagerSecretGenerateSecretString{..} =
    object $
    catMaybes
    [ fmap (("ExcludeCharacters",) . toJSON) _secretsManagerSecretGenerateSecretStringExcludeCharacters
    , fmap (("ExcludeLowercase",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringExcludeLowercase
    , fmap (("ExcludeNumbers",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringExcludeNumbers
    , fmap (("ExcludePunctuation",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringExcludePunctuation
    , fmap (("ExcludeUppercase",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringExcludeUppercase
    , fmap (("GenerateStringKey",) . toJSON) _secretsManagerSecretGenerateSecretStringGenerateStringKey
    , fmap (("IncludeSpace",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringIncludeSpace
    , fmap (("PasswordLength",) . toJSON . fmap Integer') _secretsManagerSecretGenerateSecretStringPasswordLength
    , fmap (("RequireEachIncludedType",) . toJSON . fmap Bool') _secretsManagerSecretGenerateSecretStringRequireEachIncludedType
    , fmap (("SecretStringTemplate",) . toJSON) _secretsManagerSecretGenerateSecretStringSecretStringTemplate
    ]

-- | Constructor for 'SecretsManagerSecretGenerateSecretString' containing
-- required fields as arguments.
secretsManagerSecretGenerateSecretString
  :: SecretsManagerSecretGenerateSecretString
secretsManagerSecretGenerateSecretString  =
  SecretsManagerSecretGenerateSecretString
  { _secretsManagerSecretGenerateSecretStringExcludeCharacters = Nothing
  , _secretsManagerSecretGenerateSecretStringExcludeLowercase = Nothing
  , _secretsManagerSecretGenerateSecretStringExcludeNumbers = Nothing
  , _secretsManagerSecretGenerateSecretStringExcludePunctuation = Nothing
  , _secretsManagerSecretGenerateSecretStringExcludeUppercase = Nothing
  , _secretsManagerSecretGenerateSecretStringGenerateStringKey = Nothing
  , _secretsManagerSecretGenerateSecretStringIncludeSpace = Nothing
  , _secretsManagerSecretGenerateSecretStringPasswordLength = Nothing
  , _secretsManagerSecretGenerateSecretStringRequireEachIncludedType = Nothing
  , _secretsManagerSecretGenerateSecretStringSecretStringTemplate = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludecharacters
smsgssExcludeCharacters :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Text))
smsgssExcludeCharacters = lens _secretsManagerSecretGenerateSecretStringExcludeCharacters (\s a -> s { _secretsManagerSecretGenerateSecretStringExcludeCharacters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase
smsgssExcludeLowercase :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssExcludeLowercase = lens _secretsManagerSecretGenerateSecretStringExcludeLowercase (\s a -> s { _secretsManagerSecretGenerateSecretStringExcludeLowercase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers
smsgssExcludeNumbers :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssExcludeNumbers = lens _secretsManagerSecretGenerateSecretStringExcludeNumbers (\s a -> s { _secretsManagerSecretGenerateSecretStringExcludeNumbers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludepunctuation
smsgssExcludePunctuation :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssExcludePunctuation = lens _secretsManagerSecretGenerateSecretStringExcludePunctuation (\s a -> s { _secretsManagerSecretGenerateSecretStringExcludePunctuation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase
smsgssExcludeUppercase :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssExcludeUppercase = lens _secretsManagerSecretGenerateSecretStringExcludeUppercase (\s a -> s { _secretsManagerSecretGenerateSecretStringExcludeUppercase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-generatestringkey
smsgssGenerateStringKey :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Text))
smsgssGenerateStringKey = lens _secretsManagerSecretGenerateSecretStringGenerateStringKey (\s a -> s { _secretsManagerSecretGenerateSecretStringGenerateStringKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace
smsgssIncludeSpace :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssIncludeSpace = lens _secretsManagerSecretGenerateSecretStringIncludeSpace (\s a -> s { _secretsManagerSecretGenerateSecretStringIncludeSpace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-passwordlength
smsgssPasswordLength :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Integer))
smsgssPasswordLength = lens _secretsManagerSecretGenerateSecretStringPasswordLength (\s a -> s { _secretsManagerSecretGenerateSecretStringPasswordLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype
smsgssRequireEachIncludedType :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Bool))
smsgssRequireEachIncludedType = lens _secretsManagerSecretGenerateSecretStringRequireEachIncludedType (\s a -> s { _secretsManagerSecretGenerateSecretStringRequireEachIncludedType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-secretstringtemplate
smsgssSecretStringTemplate :: Lens' SecretsManagerSecretGenerateSecretString (Maybe (Val Text))
smsgssSecretStringTemplate = lens _secretsManagerSecretGenerateSecretStringSecretStringTemplate (\s a -> s { _secretsManagerSecretGenerateSecretStringSecretStringTemplate = a })
