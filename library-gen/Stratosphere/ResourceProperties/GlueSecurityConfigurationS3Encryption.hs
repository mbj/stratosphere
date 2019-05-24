{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html

module Stratosphere.ResourceProperties.GlueSecurityConfigurationS3Encryption where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueSecurityConfigurationS3Encryption. See
-- 'glueSecurityConfigurationS3Encryption' for a more convenient
-- constructor.
data GlueSecurityConfigurationS3Encryption =
  GlueSecurityConfigurationS3Encryption
  { _glueSecurityConfigurationS3EncryptionKmsKeyArn :: Maybe (Val Text)
  , _glueSecurityConfigurationS3EncryptionS3EncryptionMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueSecurityConfigurationS3Encryption where
  toJSON GlueSecurityConfigurationS3Encryption{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyArn",) . toJSON) _glueSecurityConfigurationS3EncryptionKmsKeyArn
    , fmap (("S3EncryptionMode",) . toJSON) _glueSecurityConfigurationS3EncryptionS3EncryptionMode
    ]

-- | Constructor for 'GlueSecurityConfigurationS3Encryption' containing
-- required fields as arguments.
glueSecurityConfigurationS3Encryption
  :: GlueSecurityConfigurationS3Encryption
glueSecurityConfigurationS3Encryption  =
  GlueSecurityConfigurationS3Encryption
  { _glueSecurityConfigurationS3EncryptionKmsKeyArn = Nothing
  , _glueSecurityConfigurationS3EncryptionS3EncryptionMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html#cfn-glue-securityconfiguration-s3encryption-kmskeyarn
gscseKmsKeyArn :: Lens' GlueSecurityConfigurationS3Encryption (Maybe (Val Text))
gscseKmsKeyArn = lens _glueSecurityConfigurationS3EncryptionKmsKeyArn (\s a -> s { _glueSecurityConfigurationS3EncryptionKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html#cfn-glue-securityconfiguration-s3encryption-s3encryptionmode
gscseS3EncryptionMode :: Lens' GlueSecurityConfigurationS3Encryption (Maybe (Val Text))
gscseS3EncryptionMode = lens _glueSecurityConfigurationS3EncryptionS3EncryptionMode (\s a -> s { _glueSecurityConfigurationS3EncryptionS3EncryptionMode = a })
