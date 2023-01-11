
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html

module Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsEncryptionAtRest where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- GlueDataCatalogEncryptionSettingsEncryptionAtRest. See
-- 'glueDataCatalogEncryptionSettingsEncryptionAtRest' for a more convenient
-- constructor.
data GlueDataCatalogEncryptionSettingsEncryptionAtRest =
  GlueDataCatalogEncryptionSettingsEncryptionAtRest
  { _glueDataCatalogEncryptionSettingsEncryptionAtRestCatalogEncryptionMode :: Maybe (Val Text)
  , _glueDataCatalogEncryptionSettingsEncryptionAtRestSseAwsKmsKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueDataCatalogEncryptionSettingsEncryptionAtRest where
  toJSON GlueDataCatalogEncryptionSettingsEncryptionAtRest{..} =
    object $
    catMaybes
    [ fmap (("CatalogEncryptionMode",) . toJSON) _glueDataCatalogEncryptionSettingsEncryptionAtRestCatalogEncryptionMode
    , fmap (("SseAwsKmsKeyId",) . toJSON) _glueDataCatalogEncryptionSettingsEncryptionAtRestSseAwsKmsKeyId
    ]

-- | Constructor for 'GlueDataCatalogEncryptionSettingsEncryptionAtRest'
-- containing required fields as arguments.
glueDataCatalogEncryptionSettingsEncryptionAtRest
  :: GlueDataCatalogEncryptionSettingsEncryptionAtRest
glueDataCatalogEncryptionSettingsEncryptionAtRest  =
  GlueDataCatalogEncryptionSettingsEncryptionAtRest
  { _glueDataCatalogEncryptionSettingsEncryptionAtRestCatalogEncryptionMode = Nothing
  , _glueDataCatalogEncryptionSettingsEncryptionAtRestSseAwsKmsKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-catalogencryptionmode
gdcesearCatalogEncryptionMode :: Lens' GlueDataCatalogEncryptionSettingsEncryptionAtRest (Maybe (Val Text))
gdcesearCatalogEncryptionMode = lens _glueDataCatalogEncryptionSettingsEncryptionAtRestCatalogEncryptionMode (\s a -> s { _glueDataCatalogEncryptionSettingsEncryptionAtRestCatalogEncryptionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-sseawskmskeyid
gdcesearSseAwsKmsKeyId :: Lens' GlueDataCatalogEncryptionSettingsEncryptionAtRest (Maybe (Val Text))
gdcesearSseAwsKmsKeyId = lens _glueDataCatalogEncryptionSettingsEncryptionAtRestSseAwsKmsKeyId (\s a -> s { _glueDataCatalogEncryptionSettingsEncryptionAtRestSseAwsKmsKeyId = a })
