{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowS3OutputFormatConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowAggregationConfig
import Stratosphere.ResourceProperties.AppFlowFlowPrefixConfig

-- | Full data type definition for AppFlowFlowS3OutputFormatConfig. See
-- 'appFlowFlowS3OutputFormatConfig' for a more convenient constructor.
data AppFlowFlowS3OutputFormatConfig =
  AppFlowFlowS3OutputFormatConfig
  { _appFlowFlowS3OutputFormatConfigAggregationConfig :: Maybe AppFlowFlowAggregationConfig
  , _appFlowFlowS3OutputFormatConfigFileType :: Maybe (Val Text)
  , _appFlowFlowS3OutputFormatConfigPrefixConfig :: Maybe AppFlowFlowPrefixConfig
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowS3OutputFormatConfig where
  toJSON AppFlowFlowS3OutputFormatConfig{..} =
    object $
    catMaybes
    [ fmap (("AggregationConfig",) . toJSON) _appFlowFlowS3OutputFormatConfigAggregationConfig
    , fmap (("FileType",) . toJSON) _appFlowFlowS3OutputFormatConfigFileType
    , fmap (("PrefixConfig",) . toJSON) _appFlowFlowS3OutputFormatConfigPrefixConfig
    ]

-- | Constructor for 'AppFlowFlowS3OutputFormatConfig' containing required
-- fields as arguments.
appFlowFlowS3OutputFormatConfig
  :: AppFlowFlowS3OutputFormatConfig
appFlowFlowS3OutputFormatConfig  =
  AppFlowFlowS3OutputFormatConfig
  { _appFlowFlowS3OutputFormatConfigAggregationConfig = Nothing
  , _appFlowFlowS3OutputFormatConfigFileType = Nothing
  , _appFlowFlowS3OutputFormatConfigPrefixConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-aggregationconfig
affsofcAggregationConfig :: Lens' AppFlowFlowS3OutputFormatConfig (Maybe AppFlowFlowAggregationConfig)
affsofcAggregationConfig = lens _appFlowFlowS3OutputFormatConfigAggregationConfig (\s a -> s { _appFlowFlowS3OutputFormatConfigAggregationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-filetype
affsofcFileType :: Lens' AppFlowFlowS3OutputFormatConfig (Maybe (Val Text))
affsofcFileType = lens _appFlowFlowS3OutputFormatConfigFileType (\s a -> s { _appFlowFlowS3OutputFormatConfigFileType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-prefixconfig
affsofcPrefixConfig :: Lens' AppFlowFlowS3OutputFormatConfig (Maybe AppFlowFlowPrefixConfig)
affsofcPrefixConfig = lens _appFlowFlowS3OutputFormatConfigPrefixConfig (\s a -> s { _appFlowFlowS3OutputFormatConfigPrefixConfig = a })
