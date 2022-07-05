{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html

module Stratosphere.Resources.GlueDataCatalogEncryptionSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings

-- | Full data type definition for GlueDataCatalogEncryptionSettings. See
-- 'glueDataCatalogEncryptionSettings' for a more convenient constructor.
data GlueDataCatalogEncryptionSettings =
  GlueDataCatalogEncryptionSettings
  { _glueDataCatalogEncryptionSettingsCatalogId :: Val Text
  , _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings :: GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
  } deriving (Show, Eq)

instance ToResourceProperties GlueDataCatalogEncryptionSettings where
  toResourceProperties GlueDataCatalogEncryptionSettings{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::DataCatalogEncryptionSettings"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CatalogId",) . toJSON) _glueDataCatalogEncryptionSettingsCatalogId
        , (Just . ("DataCatalogEncryptionSettings",) . toJSON) _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
        ]
    }

-- | Constructor for 'GlueDataCatalogEncryptionSettings' containing required
-- fields as arguments.
glueDataCatalogEncryptionSettings
  :: Val Text -- ^ 'gdcesCatalogId'
  -> GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings -- ^ 'gdcesDataCatalogEncryptionSettings'
  -> GlueDataCatalogEncryptionSettings
glueDataCatalogEncryptionSettings catalogIdarg dataCatalogEncryptionSettingsarg =
  GlueDataCatalogEncryptionSettings
  { _glueDataCatalogEncryptionSettingsCatalogId = catalogIdarg
  , _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings = dataCatalogEncryptionSettingsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-catalogid
gdcesCatalogId :: Lens' GlueDataCatalogEncryptionSettings (Val Text)
gdcesCatalogId = lens _glueDataCatalogEncryptionSettingsCatalogId (\s a -> s { _glueDataCatalogEncryptionSettingsCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings
gdcesDataCatalogEncryptionSettings :: Lens' GlueDataCatalogEncryptionSettings GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
gdcesDataCatalogEncryptionSettings = lens _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings (\s a -> s { _glueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings = a })
