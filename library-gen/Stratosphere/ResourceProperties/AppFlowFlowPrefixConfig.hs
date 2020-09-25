{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowPrefixConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowPrefixConfig. See
-- 'appFlowFlowPrefixConfig' for a more convenient constructor.
data AppFlowFlowPrefixConfig =
  AppFlowFlowPrefixConfig
  { _appFlowFlowPrefixConfigPrefixFormat :: Maybe (Val Text)
  , _appFlowFlowPrefixConfigPrefixType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowPrefixConfig where
  toJSON AppFlowFlowPrefixConfig{..} =
    object $
    catMaybes
    [ fmap (("PrefixFormat",) . toJSON) _appFlowFlowPrefixConfigPrefixFormat
    , fmap (("PrefixType",) . toJSON) _appFlowFlowPrefixConfigPrefixType
    ]

-- | Constructor for 'AppFlowFlowPrefixConfig' containing required fields as
-- arguments.
appFlowFlowPrefixConfig
  :: AppFlowFlowPrefixConfig
appFlowFlowPrefixConfig  =
  AppFlowFlowPrefixConfig
  { _appFlowFlowPrefixConfigPrefixFormat = Nothing
  , _appFlowFlowPrefixConfigPrefixType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html#cfn-appflow-flow-prefixconfig-prefixformat
affpcPrefixFormat :: Lens' AppFlowFlowPrefixConfig (Maybe (Val Text))
affpcPrefixFormat = lens _appFlowFlowPrefixConfigPrefixFormat (\s a -> s { _appFlowFlowPrefixConfigPrefixFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html#cfn-appflow-flow-prefixconfig-prefixtype
affpcPrefixType :: Lens' AppFlowFlowPrefixConfig (Maybe (Val Text))
affpcPrefixType = lens _appFlowFlowPrefixConfigPrefixType (\s a -> s { _appFlowFlowPrefixConfigPrefixType = a })
