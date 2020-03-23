{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-link-bandwidth.html

module Stratosphere.ResourceProperties.NetworkManagerLinkBandwidth where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerLinkBandwidth. See
-- 'networkManagerLinkBandwidth' for a more convenient constructor.
data NetworkManagerLinkBandwidth =
  NetworkManagerLinkBandwidth
  { _networkManagerLinkBandwidthDownloadSpeed :: Maybe (Val Integer)
  , _networkManagerLinkBandwidthUploadSpeed :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON NetworkManagerLinkBandwidth where
  toJSON NetworkManagerLinkBandwidth{..} =
    object $
    catMaybes
    [ fmap (("DownloadSpeed",) . toJSON) _networkManagerLinkBandwidthDownloadSpeed
    , fmap (("UploadSpeed",) . toJSON) _networkManagerLinkBandwidthUploadSpeed
    ]

-- | Constructor for 'NetworkManagerLinkBandwidth' containing required fields
-- as arguments.
networkManagerLinkBandwidth
  :: NetworkManagerLinkBandwidth
networkManagerLinkBandwidth  =
  NetworkManagerLinkBandwidth
  { _networkManagerLinkBandwidthDownloadSpeed = Nothing
  , _networkManagerLinkBandwidthUploadSpeed = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-link-bandwidth.html#cfn-networkmanager-link-bandwidth-downloadspeed
nmlbDownloadSpeed :: Lens' NetworkManagerLinkBandwidth (Maybe (Val Integer))
nmlbDownloadSpeed = lens _networkManagerLinkBandwidthDownloadSpeed (\s a -> s { _networkManagerLinkBandwidthDownloadSpeed = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-link-bandwidth.html#cfn-networkmanager-link-bandwidth-uploadspeed
nmlbUploadSpeed :: Lens' NetworkManagerLinkBandwidth (Maybe (Val Integer))
nmlbUploadSpeed = lens _networkManagerLinkBandwidthUploadSpeed (\s a -> s { _networkManagerLinkBandwidthUploadSpeed = a })
