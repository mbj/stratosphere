{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-serversideencryptionconfiguration.html

module Stratosphere.ResourceProperties.KendraIndexServerSideEncryptionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraIndexServerSideEncryptionConfiguration. See
-- 'kendraIndexServerSideEncryptionConfiguration' for a more convenient
-- constructor.
data KendraIndexServerSideEncryptionConfiguration =
  KendraIndexServerSideEncryptionConfiguration
  { _kendraIndexServerSideEncryptionConfigurationKmsKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KendraIndexServerSideEncryptionConfiguration where
  toJSON KendraIndexServerSideEncryptionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyId",) . toJSON) _kendraIndexServerSideEncryptionConfigurationKmsKeyId
    ]

-- | Constructor for 'KendraIndexServerSideEncryptionConfiguration' containing
-- required fields as arguments.
kendraIndexServerSideEncryptionConfiguration
  :: KendraIndexServerSideEncryptionConfiguration
kendraIndexServerSideEncryptionConfiguration  =
  KendraIndexServerSideEncryptionConfiguration
  { _kendraIndexServerSideEncryptionConfigurationKmsKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-serversideencryptionconfiguration.html#cfn-kendra-index-serversideencryptionconfiguration-kmskeyid
kissecKmsKeyId :: Lens' KendraIndexServerSideEncryptionConfiguration (Maybe (Val Text))
kissecKmsKeyId = lens _kendraIndexServerSideEncryptionConfigurationKmsKeyId (\s a -> s { _kendraIndexServerSideEncryptionConfigurationKmsKeyId = a })
