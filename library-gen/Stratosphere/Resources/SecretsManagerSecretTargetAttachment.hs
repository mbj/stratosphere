{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html

module Stratosphere.Resources.SecretsManagerSecretTargetAttachment where

import Stratosphere.ResourceImports


-- | Full data type definition for SecretsManagerSecretTargetAttachment. See
-- 'secretsManagerSecretTargetAttachment' for a more convenient constructor.
data SecretsManagerSecretTargetAttachment =
  SecretsManagerSecretTargetAttachment
  { _secretsManagerSecretTargetAttachmentSecretId :: Val Text
  , _secretsManagerSecretTargetAttachmentTargetId :: Val Text
  , _secretsManagerSecretTargetAttachmentTargetType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SecretsManagerSecretTargetAttachment where
  toResourceProperties SecretsManagerSecretTargetAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SecretsManager::SecretTargetAttachment"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("SecretId",) . toJSON) _secretsManagerSecretTargetAttachmentSecretId
        , (Just . ("TargetId",) . toJSON) _secretsManagerSecretTargetAttachmentTargetId
        , (Just . ("TargetType",) . toJSON) _secretsManagerSecretTargetAttachmentTargetType
        ]
    }

-- | Constructor for 'SecretsManagerSecretTargetAttachment' containing
-- required fields as arguments.
secretsManagerSecretTargetAttachment
  :: Val Text -- ^ 'smstaSecretId'
  -> Val Text -- ^ 'smstaTargetId'
  -> Val Text -- ^ 'smstaTargetType'
  -> SecretsManagerSecretTargetAttachment
secretsManagerSecretTargetAttachment secretIdarg targetIdarg targetTypearg =
  SecretsManagerSecretTargetAttachment
  { _secretsManagerSecretTargetAttachmentSecretId = secretIdarg
  , _secretsManagerSecretTargetAttachmentTargetId = targetIdarg
  , _secretsManagerSecretTargetAttachmentTargetType = targetTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-secretid
smstaSecretId :: Lens' SecretsManagerSecretTargetAttachment (Val Text)
smstaSecretId = lens _secretsManagerSecretTargetAttachmentSecretId (\s a -> s { _secretsManagerSecretTargetAttachmentSecretId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targetid
smstaTargetId :: Lens' SecretsManagerSecretTargetAttachment (Val Text)
smstaTargetId = lens _secretsManagerSecretTargetAttachmentTargetId (\s a -> s { _secretsManagerSecretTargetAttachmentTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targettype
smstaTargetType :: Lens' SecretsManagerSecretTargetAttachment (Val Text)
smstaTargetType = lens _secretsManagerSecretTargetAttachmentTargetType (\s a -> s { _secretsManagerSecretTargetAttachmentTargetType = a })
