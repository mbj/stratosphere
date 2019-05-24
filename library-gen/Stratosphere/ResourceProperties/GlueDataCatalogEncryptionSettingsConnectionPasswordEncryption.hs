{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html

module Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption. See
-- 'glueDataCatalogEncryptionSettingsConnectionPasswordEncryption' for a
-- more convenient constructor.
data GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption =
  GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
  { _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionKmsKeyId :: Maybe (Val Text)
  , _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionReturnConnectionPasswordEncrypted :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption where
  toJSON GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyId",) . toJSON) _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionKmsKeyId
    , fmap (("ReturnConnectionPasswordEncrypted",) . toJSON) _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionReturnConnectionPasswordEncrypted
    ]

-- | Constructor for
-- 'GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption'
-- containing required fields as arguments.
glueDataCatalogEncryptionSettingsConnectionPasswordEncryption
  :: GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
glueDataCatalogEncryptionSettingsConnectionPasswordEncryption  =
  GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
  { _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionKmsKeyId = Nothing
  , _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionReturnConnectionPasswordEncrypted = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-kmskeyid
gdcescpeKmsKeyId :: Lens' GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption (Maybe (Val Text))
gdcescpeKmsKeyId = lens _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionKmsKeyId (\s a -> s { _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-returnconnectionpasswordencrypted
gdcescpeReturnConnectionPasswordEncrypted :: Lens' GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption (Maybe (Val Bool))
gdcescpeReturnConnectionPasswordEncrypted = lens _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionReturnConnectionPasswordEncrypted (\s a -> s { _glueDataCatalogEncryptionSettingsConnectionPasswordEncryptionReturnConnectionPasswordEncrypted = a })
