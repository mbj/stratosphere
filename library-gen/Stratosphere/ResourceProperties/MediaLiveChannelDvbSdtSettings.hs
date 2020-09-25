{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsdtsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelDvbSdtSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelDvbSdtSettings. See
-- 'mediaLiveChannelDvbSdtSettings' for a more convenient constructor.
data MediaLiveChannelDvbSdtSettings =
  MediaLiveChannelDvbSdtSettings
  { _mediaLiveChannelDvbSdtSettingsOutputSdt :: Maybe (Val Text)
  , _mediaLiveChannelDvbSdtSettingsRepInterval :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSdtSettingsServiceName :: Maybe (Val Text)
  , _mediaLiveChannelDvbSdtSettingsServiceProviderName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelDvbSdtSettings where
  toJSON MediaLiveChannelDvbSdtSettings{..} =
    object $
    catMaybes
    [ fmap (("OutputSdt",) . toJSON) _mediaLiveChannelDvbSdtSettingsOutputSdt
    , fmap (("RepInterval",) . toJSON) _mediaLiveChannelDvbSdtSettingsRepInterval
    , fmap (("ServiceName",) . toJSON) _mediaLiveChannelDvbSdtSettingsServiceName
    , fmap (("ServiceProviderName",) . toJSON) _mediaLiveChannelDvbSdtSettingsServiceProviderName
    ]

-- | Constructor for 'MediaLiveChannelDvbSdtSettings' containing required
-- fields as arguments.
mediaLiveChannelDvbSdtSettings
  :: MediaLiveChannelDvbSdtSettings
mediaLiveChannelDvbSdtSettings  =
  MediaLiveChannelDvbSdtSettings
  { _mediaLiveChannelDvbSdtSettingsOutputSdt = Nothing
  , _mediaLiveChannelDvbSdtSettingsRepInterval = Nothing
  , _mediaLiveChannelDvbSdtSettingsServiceName = Nothing
  , _mediaLiveChannelDvbSdtSettingsServiceProviderName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsdtsettings.html#cfn-medialive-channel-dvbsdtsettings-outputsdt
mlcdssOutputSdt :: Lens' MediaLiveChannelDvbSdtSettings (Maybe (Val Text))
mlcdssOutputSdt = lens _mediaLiveChannelDvbSdtSettingsOutputSdt (\s a -> s { _mediaLiveChannelDvbSdtSettingsOutputSdt = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsdtsettings.html#cfn-medialive-channel-dvbsdtsettings-repinterval
mlcdssRepInterval :: Lens' MediaLiveChannelDvbSdtSettings (Maybe (Val Integer))
mlcdssRepInterval = lens _mediaLiveChannelDvbSdtSettingsRepInterval (\s a -> s { _mediaLiveChannelDvbSdtSettingsRepInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsdtsettings.html#cfn-medialive-channel-dvbsdtsettings-servicename
mlcdssServiceName :: Lens' MediaLiveChannelDvbSdtSettings (Maybe (Val Text))
mlcdssServiceName = lens _mediaLiveChannelDvbSdtSettingsServiceName (\s a -> s { _mediaLiveChannelDvbSdtSettingsServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsdtsettings.html#cfn-medialive-channel-dvbsdtsettings-serviceprovidername
mlcdssServiceProviderName :: Lens' MediaLiveChannelDvbSdtSettings (Maybe (Val Text))
mlcdssServiceProviderName = lens _mediaLiveChannelDvbSdtSettingsServiceProviderName (\s a -> s { _mediaLiveChannelDvbSdtSettingsServiceProviderName = a })
