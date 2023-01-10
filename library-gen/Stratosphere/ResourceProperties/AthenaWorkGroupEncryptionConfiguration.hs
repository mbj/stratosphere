
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html

module Stratosphere.ResourceProperties.AthenaWorkGroupEncryptionConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AthenaWorkGroupEncryptionConfiguration. See
-- 'athenaWorkGroupEncryptionConfiguration' for a more convenient
-- constructor.
data AthenaWorkGroupEncryptionConfiguration =
  AthenaWorkGroupEncryptionConfiguration
  { _athenaWorkGroupEncryptionConfigurationEncryptionOption :: Val Text
  , _athenaWorkGroupEncryptionConfigurationKmsKey :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupEncryptionConfiguration where
  toJSON AthenaWorkGroupEncryptionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("EncryptionOption",) . toJSON) _athenaWorkGroupEncryptionConfigurationEncryptionOption
    , fmap (("KmsKey",) . toJSON) _athenaWorkGroupEncryptionConfigurationKmsKey
    ]

-- | Constructor for 'AthenaWorkGroupEncryptionConfiguration' containing
-- required fields as arguments.
athenaWorkGroupEncryptionConfiguration
  :: Val Text -- ^ 'awgecEncryptionOption'
  -> AthenaWorkGroupEncryptionConfiguration
athenaWorkGroupEncryptionConfiguration encryptionOptionarg =
  AthenaWorkGroupEncryptionConfiguration
  { _athenaWorkGroupEncryptionConfigurationEncryptionOption = encryptionOptionarg
  , _athenaWorkGroupEncryptionConfigurationKmsKey = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-encryptionoption
awgecEncryptionOption :: Lens' AthenaWorkGroupEncryptionConfiguration (Val Text)
awgecEncryptionOption = lens _athenaWorkGroupEncryptionConfigurationEncryptionOption (\s a -> s { _athenaWorkGroupEncryptionConfigurationEncryptionOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-kmskey
awgecKmsKey :: Lens' AthenaWorkGroupEncryptionConfiguration (Maybe (Val Text))
awgecKmsKey = lens _athenaWorkGroupEncryptionConfigurationKmsKey (\s a -> s { _athenaWorkGroupEncryptionConfigurationKmsKey = a })
