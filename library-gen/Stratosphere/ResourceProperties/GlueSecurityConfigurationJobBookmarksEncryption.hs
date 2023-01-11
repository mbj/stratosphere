
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html

module Stratosphere.ResourceProperties.GlueSecurityConfigurationJobBookmarksEncryption where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- GlueSecurityConfigurationJobBookmarksEncryption. See
-- 'glueSecurityConfigurationJobBookmarksEncryption' for a more convenient
-- constructor.
data GlueSecurityConfigurationJobBookmarksEncryption =
  GlueSecurityConfigurationJobBookmarksEncryption
  { _glueSecurityConfigurationJobBookmarksEncryptionJobBookmarksEncryptionMode :: Maybe (Val Text)
  , _glueSecurityConfigurationJobBookmarksEncryptionKmsKeyArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueSecurityConfigurationJobBookmarksEncryption where
  toJSON GlueSecurityConfigurationJobBookmarksEncryption{..} =
    object $
    catMaybes
    [ fmap (("JobBookmarksEncryptionMode",) . toJSON) _glueSecurityConfigurationJobBookmarksEncryptionJobBookmarksEncryptionMode
    , fmap (("KmsKeyArn",) . toJSON) _glueSecurityConfigurationJobBookmarksEncryptionKmsKeyArn
    ]

-- | Constructor for 'GlueSecurityConfigurationJobBookmarksEncryption'
-- containing required fields as arguments.
glueSecurityConfigurationJobBookmarksEncryption
  :: GlueSecurityConfigurationJobBookmarksEncryption
glueSecurityConfigurationJobBookmarksEncryption  =
  GlueSecurityConfigurationJobBookmarksEncryption
  { _glueSecurityConfigurationJobBookmarksEncryptionJobBookmarksEncryptionMode = Nothing
  , _glueSecurityConfigurationJobBookmarksEncryptionKmsKeyArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-jobbookmarksencryptionmode
gscjbeJobBookmarksEncryptionMode :: Lens' GlueSecurityConfigurationJobBookmarksEncryption (Maybe (Val Text))
gscjbeJobBookmarksEncryptionMode = lens _glueSecurityConfigurationJobBookmarksEncryptionJobBookmarksEncryptionMode (\s a -> s { _glueSecurityConfigurationJobBookmarksEncryptionJobBookmarksEncryptionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-kmskeyarn
gscjbeKmsKeyArn :: Lens' GlueSecurityConfigurationJobBookmarksEncryption (Maybe (Val Text))
gscjbeKmsKeyArn = lens _glueSecurityConfigurationJobBookmarksEncryptionKmsKeyArn (\s a -> s { _glueSecurityConfigurationJobBookmarksEncryptionKmsKeyArn = a })
