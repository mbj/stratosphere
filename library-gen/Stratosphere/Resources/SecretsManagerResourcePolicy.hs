{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html

module Stratosphere.Resources.SecretsManagerResourcePolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for SecretsManagerResourcePolicy. See
-- 'secretsManagerResourcePolicy' for a more convenient constructor.
data SecretsManagerResourcePolicy =
  SecretsManagerResourcePolicy
  { _secretsManagerResourcePolicyResourcePolicy :: Object
  , _secretsManagerResourcePolicySecretId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SecretsManagerResourcePolicy where
  toResourceProperties SecretsManagerResourcePolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SecretsManager::ResourcePolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ResourcePolicy",) . toJSON) _secretsManagerResourcePolicyResourcePolicy
        , (Just . ("SecretId",) . toJSON) _secretsManagerResourcePolicySecretId
        ]
    }

-- | Constructor for 'SecretsManagerResourcePolicy' containing required fields
-- as arguments.
secretsManagerResourcePolicy
  :: Object -- ^ 'smrpResourcePolicy'
  -> Val Text -- ^ 'smrpSecretId'
  -> SecretsManagerResourcePolicy
secretsManagerResourcePolicy resourcePolicyarg secretIdarg =
  SecretsManagerResourcePolicy
  { _secretsManagerResourcePolicyResourcePolicy = resourcePolicyarg
  , _secretsManagerResourcePolicySecretId = secretIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy
smrpResourcePolicy :: Lens' SecretsManagerResourcePolicy Object
smrpResourcePolicy = lens _secretsManagerResourcePolicyResourcePolicy (\s a -> s { _secretsManagerResourcePolicyResourcePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid
smrpSecretId :: Lens' SecretsManagerResourcePolicy (Val Text)
smrpSecretId = lens _secretsManagerResourcePolicySecretId (\s a -> s { _secretsManagerResourcePolicySecretId = a })
