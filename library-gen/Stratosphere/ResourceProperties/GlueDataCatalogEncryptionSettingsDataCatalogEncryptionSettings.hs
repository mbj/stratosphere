
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html

module Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
import Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsEncryptionAtRest

-- | Full data type definition for
-- GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings. See
-- 'glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings' for a
-- more convenient constructor.
data GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings =
  GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
  { _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption :: Maybe GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
  , _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest :: Maybe GlueDataCatalogEncryptionSettingsEncryptionAtRest
  } deriving (Show, Eq)

instance ToJSON GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings where
  toJSON GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings{..} =
    object $
    catMaybes
    [ fmap (("ConnectionPasswordEncryption",) . toJSON) _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption
    , fmap (("EncryptionAtRest",) . toJSON) _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest
    ]

-- | Constructor for
-- 'GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings'
-- containing required fields as arguments.
glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
  :: GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings  =
  GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
  { _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption = Nothing
  , _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-connectionpasswordencryption
gdcesdcesConnectionPasswordEncryption :: Lens' GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings (Maybe GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption)
gdcesdcesConnectionPasswordEncryption = lens _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption (\s a -> s { _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-encryptionatrest
gdcesdcesEncryptionAtRest :: Lens' GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings (Maybe GlueDataCatalogEncryptionSettingsEncryptionAtRest)
gdcesdcesEncryptionAtRest = lens _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest (\s a -> s { _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest = a })
