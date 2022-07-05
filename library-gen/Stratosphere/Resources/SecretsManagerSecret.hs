{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html

module Stratosphere.Resources.SecretsManagerSecret where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SecretsManagerSecretGenerateSecretString
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SecretsManagerSecret. See
-- 'secretsManagerSecret' for a more convenient constructor.
data SecretsManagerSecret =
  SecretsManagerSecret
  { _secretsManagerSecretDescription :: Maybe (Val Text)
  , _secretsManagerSecretGenerateSecretString :: Maybe SecretsManagerSecretGenerateSecretString
  , _secretsManagerSecretKmsKeyId :: Maybe (Val Text)
  , _secretsManagerSecretName :: Maybe (Val Text)
  , _secretsManagerSecretSecretString :: Maybe (Val Text)
  , _secretsManagerSecretTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties SecretsManagerSecret where
  toResourceProperties SecretsManagerSecret{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SecretsManager::Secret"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _secretsManagerSecretDescription
        , fmap (("GenerateSecretString",) . toJSON) _secretsManagerSecretGenerateSecretString
        , fmap (("KmsKeyId",) . toJSON) _secretsManagerSecretKmsKeyId
        , fmap (("Name",) . toJSON) _secretsManagerSecretName
        , fmap (("SecretString",) . toJSON) _secretsManagerSecretSecretString
        , fmap (("Tags",) . toJSON) _secretsManagerSecretTags
        ]
    }

-- | Constructor for 'SecretsManagerSecret' containing required fields as
-- arguments.
secretsManagerSecret
  :: SecretsManagerSecret
secretsManagerSecret  =
  SecretsManagerSecret
  { _secretsManagerSecretDescription = Nothing
  , _secretsManagerSecretGenerateSecretString = Nothing
  , _secretsManagerSecretKmsKeyId = Nothing
  , _secretsManagerSecretName = Nothing
  , _secretsManagerSecretSecretString = Nothing
  , _secretsManagerSecretTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-description
smsDescription :: Lens' SecretsManagerSecret (Maybe (Val Text))
smsDescription = lens _secretsManagerSecretDescription (\s a -> s { _secretsManagerSecretDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-generatesecretstring
smsGenerateSecretString :: Lens' SecretsManagerSecret (Maybe SecretsManagerSecretGenerateSecretString)
smsGenerateSecretString = lens _secretsManagerSecretGenerateSecretString (\s a -> s { _secretsManagerSecretGenerateSecretString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-kmskeyid
smsKmsKeyId :: Lens' SecretsManagerSecret (Maybe (Val Text))
smsKmsKeyId = lens _secretsManagerSecretKmsKeyId (\s a -> s { _secretsManagerSecretKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-name
smsName :: Lens' SecretsManagerSecret (Maybe (Val Text))
smsName = lens _secretsManagerSecretName (\s a -> s { _secretsManagerSecretName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-secretstring
smsSecretString :: Lens' SecretsManagerSecret (Maybe (Val Text))
smsSecretString = lens _secretsManagerSecretSecretString (\s a -> s { _secretsManagerSecretSecretString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-tags
smsTags :: Lens' SecretsManagerSecret (Maybe [Tag])
smsTags = lens _secretsManagerSecretTags (\s a -> s { _secretsManagerSecretTags = a })
