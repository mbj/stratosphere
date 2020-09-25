{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowErrorHandlingConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowErrorHandlingConfig. See
-- 'appFlowFlowErrorHandlingConfig' for a more convenient constructor.
data AppFlowFlowErrorHandlingConfig =
  AppFlowFlowErrorHandlingConfig
  { _appFlowFlowErrorHandlingConfigBucketName :: Maybe (Val Text)
  , _appFlowFlowErrorHandlingConfigBucketPrefix :: Maybe (Val Text)
  , _appFlowFlowErrorHandlingConfigFailOnFirstError :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowErrorHandlingConfig where
  toJSON AppFlowFlowErrorHandlingConfig{..} =
    object $
    catMaybes
    [ fmap (("BucketName",) . toJSON) _appFlowFlowErrorHandlingConfigBucketName
    , fmap (("BucketPrefix",) . toJSON) _appFlowFlowErrorHandlingConfigBucketPrefix
    , fmap (("FailOnFirstError",) . toJSON) _appFlowFlowErrorHandlingConfigFailOnFirstError
    ]

-- | Constructor for 'AppFlowFlowErrorHandlingConfig' containing required
-- fields as arguments.
appFlowFlowErrorHandlingConfig
  :: AppFlowFlowErrorHandlingConfig
appFlowFlowErrorHandlingConfig  =
  AppFlowFlowErrorHandlingConfig
  { _appFlowFlowErrorHandlingConfigBucketName = Nothing
  , _appFlowFlowErrorHandlingConfigBucketPrefix = Nothing
  , _appFlowFlowErrorHandlingConfigFailOnFirstError = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-bucketname
affehcBucketName :: Lens' AppFlowFlowErrorHandlingConfig (Maybe (Val Text))
affehcBucketName = lens _appFlowFlowErrorHandlingConfigBucketName (\s a -> s { _appFlowFlowErrorHandlingConfigBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-bucketprefix
affehcBucketPrefix :: Lens' AppFlowFlowErrorHandlingConfig (Maybe (Val Text))
affehcBucketPrefix = lens _appFlowFlowErrorHandlingConfigBucketPrefix (\s a -> s { _appFlowFlowErrorHandlingConfigBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-errorhandlingconfig.html#cfn-appflow-flow-errorhandlingconfig-failonfirsterror
affehcFailOnFirstError :: Lens' AppFlowFlowErrorHandlingConfig (Maybe (Val Bool))
affehcFailOnFirstError = lens _appFlowFlowErrorHandlingConfigFailOnFirstError (\s a -> s { _appFlowFlowErrorHandlingConfigFailOnFirstError = a })
