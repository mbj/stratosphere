{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceAwsIamConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceAwsIamConfig. See
-- 'appSyncDataSourceAwsIamConfig' for a more convenient constructor.
data AppSyncDataSourceAwsIamConfig =
  AppSyncDataSourceAwsIamConfig
  { _appSyncDataSourceAwsIamConfigSigningRegion :: Maybe (Val Text)
  , _appSyncDataSourceAwsIamConfigSigningServiceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceAwsIamConfig where
  toJSON AppSyncDataSourceAwsIamConfig{..} =
    object $
    catMaybes
    [ fmap (("SigningRegion",) . toJSON) _appSyncDataSourceAwsIamConfigSigningRegion
    , fmap (("SigningServiceName",) . toJSON) _appSyncDataSourceAwsIamConfigSigningServiceName
    ]

instance FromJSON AppSyncDataSourceAwsIamConfig where
  parseJSON (Object obj) =
    AppSyncDataSourceAwsIamConfig <$>
      (obj .:? "SigningRegion") <*>
      (obj .:? "SigningServiceName")
  parseJSON _ = mempty

-- | Constructor for 'AppSyncDataSourceAwsIamConfig' containing required
-- fields as arguments.
appSyncDataSourceAwsIamConfig
  :: AppSyncDataSourceAwsIamConfig
appSyncDataSourceAwsIamConfig  =
  AppSyncDataSourceAwsIamConfig
  { _appSyncDataSourceAwsIamConfigSigningRegion = Nothing
  , _appSyncDataSourceAwsIamConfigSigningServiceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingregion
asdsaicSigningRegion :: Lens' AppSyncDataSourceAwsIamConfig (Maybe (Val Text))
asdsaicSigningRegion = lens _appSyncDataSourceAwsIamConfigSigningRegion (\s a -> s { _appSyncDataSourceAwsIamConfigSigningRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingservicename
asdsaicSigningServiceName :: Lens' AppSyncDataSourceAwsIamConfig (Maybe (Val Text))
asdsaicSigningServiceName = lens _appSyncDataSourceAwsIamConfigSigningServiceName (\s a -> s { _appSyncDataSourceAwsIamConfigSigningServiceName = a })
