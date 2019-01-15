{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html

module Stratosphere.ResourceProperties.DMSEndpointElasticsearchSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointElasticsearchSettings. See
-- 'dmsEndpointElasticsearchSettings' for a more convenient constructor.
data DMSEndpointElasticsearchSettings =
  DMSEndpointElasticsearchSettings
  { _dMSEndpointElasticsearchSettingsEndpointUri :: Maybe (Val Text)
  , _dMSEndpointElasticsearchSettingsErrorRetryDuration :: Maybe (Val Integer)
  , _dMSEndpointElasticsearchSettingsFullLoadErrorPercentage :: Maybe (Val Integer)
  , _dMSEndpointElasticsearchSettingsServiceAccessRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointElasticsearchSettings where
  toJSON DMSEndpointElasticsearchSettings{..} =
    object $
    catMaybes
    [ fmap (("EndpointUri",) . toJSON) _dMSEndpointElasticsearchSettingsEndpointUri
    , fmap (("ErrorRetryDuration",) . toJSON . fmap Integer') _dMSEndpointElasticsearchSettingsErrorRetryDuration
    , fmap (("FullLoadErrorPercentage",) . toJSON . fmap Integer') _dMSEndpointElasticsearchSettingsFullLoadErrorPercentage
    , fmap (("ServiceAccessRoleArn",) . toJSON) _dMSEndpointElasticsearchSettingsServiceAccessRoleArn
    ]

instance FromJSON DMSEndpointElasticsearchSettings where
  parseJSON (Object obj) =
    DMSEndpointElasticsearchSettings <$>
      (obj .:? "EndpointUri") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ErrorRetryDuration") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "FullLoadErrorPercentage") <*>
      (obj .:? "ServiceAccessRoleArn")
  parseJSON _ = mempty

-- | Constructor for 'DMSEndpointElasticsearchSettings' containing required
-- fields as arguments.
dmsEndpointElasticsearchSettings
  :: DMSEndpointElasticsearchSettings
dmsEndpointElasticsearchSettings  =
  DMSEndpointElasticsearchSettings
  { _dMSEndpointElasticsearchSettingsEndpointUri = Nothing
  , _dMSEndpointElasticsearchSettingsErrorRetryDuration = Nothing
  , _dMSEndpointElasticsearchSettingsFullLoadErrorPercentage = Nothing
  , _dMSEndpointElasticsearchSettingsServiceAccessRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-endpointuri
dmseesEndpointUri :: Lens' DMSEndpointElasticsearchSettings (Maybe (Val Text))
dmseesEndpointUri = lens _dMSEndpointElasticsearchSettingsEndpointUri (\s a -> s { _dMSEndpointElasticsearchSettingsEndpointUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-errorretryduration
dmseesErrorRetryDuration :: Lens' DMSEndpointElasticsearchSettings (Maybe (Val Integer))
dmseesErrorRetryDuration = lens _dMSEndpointElasticsearchSettingsErrorRetryDuration (\s a -> s { _dMSEndpointElasticsearchSettingsErrorRetryDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage
dmseesFullLoadErrorPercentage :: Lens' DMSEndpointElasticsearchSettings (Maybe (Val Integer))
dmseesFullLoadErrorPercentage = lens _dMSEndpointElasticsearchSettingsFullLoadErrorPercentage (\s a -> s { _dMSEndpointElasticsearchSettingsFullLoadErrorPercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn
dmseesServiceAccessRoleArn :: Lens' DMSEndpointElasticsearchSettings (Maybe (Val Text))
dmseesServiceAccessRoleArn = lens _dMSEndpointElasticsearchSettingsServiceAccessRoleArn (\s a -> s { _dMSEndpointElasticsearchSettingsServiceAccessRoleArn = a })
