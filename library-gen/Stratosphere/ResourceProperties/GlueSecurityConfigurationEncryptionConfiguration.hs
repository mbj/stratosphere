
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html

module Stratosphere.ResourceProperties.GlueSecurityConfigurationEncryptionConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueSecurityConfigurationCloudWatchEncryption
import Stratosphere.ResourceProperties.GlueSecurityConfigurationJobBookmarksEncryption
import Stratosphere.ResourceProperties.GlueSecurityConfigurationS3Encryption

-- | Full data type definition for
-- GlueSecurityConfigurationEncryptionConfiguration. See
-- 'glueSecurityConfigurationEncryptionConfiguration' for a more convenient
-- constructor.
data GlueSecurityConfigurationEncryptionConfiguration =
  GlueSecurityConfigurationEncryptionConfiguration
  { _glueSecurityConfigurationEncryptionConfigurationCloudWatchEncryption :: Maybe GlueSecurityConfigurationCloudWatchEncryption
  , _glueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption :: Maybe GlueSecurityConfigurationJobBookmarksEncryption
  , _glueSecurityConfigurationEncryptionConfigurationS3Encryptions :: Maybe [GlueSecurityConfigurationS3Encryption]
  } deriving (Show, Eq)

instance ToJSON GlueSecurityConfigurationEncryptionConfiguration where
  toJSON GlueSecurityConfigurationEncryptionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchEncryption",) . toJSON) _glueSecurityConfigurationEncryptionConfigurationCloudWatchEncryption
    , fmap (("JobBookmarksEncryption",) . toJSON) _glueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption
    , fmap (("S3Encryptions",) . toJSON) _glueSecurityConfigurationEncryptionConfigurationS3Encryptions
    ]

-- | Constructor for 'GlueSecurityConfigurationEncryptionConfiguration'
-- containing required fields as arguments.
glueSecurityConfigurationEncryptionConfiguration
  :: GlueSecurityConfigurationEncryptionConfiguration
glueSecurityConfigurationEncryptionConfiguration  =
  GlueSecurityConfigurationEncryptionConfiguration
  { _glueSecurityConfigurationEncryptionConfigurationCloudWatchEncryption = Nothing
  , _glueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption = Nothing
  , _glueSecurityConfigurationEncryptionConfigurationS3Encryptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-cloudwatchencryption
gscecCloudWatchEncryption :: Lens' GlueSecurityConfigurationEncryptionConfiguration (Maybe GlueSecurityConfigurationCloudWatchEncryption)
gscecCloudWatchEncryption = lens _glueSecurityConfigurationEncryptionConfigurationCloudWatchEncryption (\s a -> s { _glueSecurityConfigurationEncryptionConfigurationCloudWatchEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-jobbookmarksencryption
gscecJobBookmarksEncryption :: Lens' GlueSecurityConfigurationEncryptionConfiguration (Maybe GlueSecurityConfigurationJobBookmarksEncryption)
gscecJobBookmarksEncryption = lens _glueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption (\s a -> s { _glueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-s3encryptions
gscecS3Encryptions :: Lens' GlueSecurityConfigurationEncryptionConfiguration (Maybe [GlueSecurityConfigurationS3Encryption])
gscecS3Encryptions = lens _glueSecurityConfigurationEncryptionConfigurationS3Encryptions (\s a -> s { _glueSecurityConfigurationEncryptionConfigurationS3Encryptions = a })
