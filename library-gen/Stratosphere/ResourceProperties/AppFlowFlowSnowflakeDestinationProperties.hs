{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSnowflakeDestinationProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowErrorHandlingConfig

-- | Full data type definition for AppFlowFlowSnowflakeDestinationProperties.
-- See 'appFlowFlowSnowflakeDestinationProperties' for a more convenient
-- constructor.
data AppFlowFlowSnowflakeDestinationProperties =
  AppFlowFlowSnowflakeDestinationProperties
  { _appFlowFlowSnowflakeDestinationPropertiesBucketPrefix :: Maybe (Val Text)
  , _appFlowFlowSnowflakeDestinationPropertiesErrorHandlingConfig :: Maybe AppFlowFlowErrorHandlingConfig
  , _appFlowFlowSnowflakeDestinationPropertiesIntermediateBucketName :: Val Text
  , _appFlowFlowSnowflakeDestinationPropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSnowflakeDestinationProperties where
  toJSON AppFlowFlowSnowflakeDestinationProperties{..} =
    object $
    catMaybes
    [ fmap (("BucketPrefix",) . toJSON) _appFlowFlowSnowflakeDestinationPropertiesBucketPrefix
    , fmap (("ErrorHandlingConfig",) . toJSON) _appFlowFlowSnowflakeDestinationPropertiesErrorHandlingConfig
    , (Just . ("IntermediateBucketName",) . toJSON) _appFlowFlowSnowflakeDestinationPropertiesIntermediateBucketName
    , (Just . ("Object",) . toJSON) _appFlowFlowSnowflakeDestinationPropertiesObject
    ]

-- | Constructor for 'AppFlowFlowSnowflakeDestinationProperties' containing
-- required fields as arguments.
appFlowFlowSnowflakeDestinationProperties
  :: Val Text -- ^ 'affsdpIntermediateBucketName'
  -> Val Text -- ^ 'affsdpObject'
  -> AppFlowFlowSnowflakeDestinationProperties
appFlowFlowSnowflakeDestinationProperties intermediateBucketNamearg objectarg =
  AppFlowFlowSnowflakeDestinationProperties
  { _appFlowFlowSnowflakeDestinationPropertiesBucketPrefix = Nothing
  , _appFlowFlowSnowflakeDestinationPropertiesErrorHandlingConfig = Nothing
  , _appFlowFlowSnowflakeDestinationPropertiesIntermediateBucketName = intermediateBucketNamearg
  , _appFlowFlowSnowflakeDestinationPropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-bucketprefix
affsdpBucketPrefix :: Lens' AppFlowFlowSnowflakeDestinationProperties (Maybe (Val Text))
affsdpBucketPrefix = lens _appFlowFlowSnowflakeDestinationPropertiesBucketPrefix (\s a -> s { _appFlowFlowSnowflakeDestinationPropertiesBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-errorhandlingconfig
affsdpErrorHandlingConfig :: Lens' AppFlowFlowSnowflakeDestinationProperties (Maybe AppFlowFlowErrorHandlingConfig)
affsdpErrorHandlingConfig = lens _appFlowFlowSnowflakeDestinationPropertiesErrorHandlingConfig (\s a -> s { _appFlowFlowSnowflakeDestinationPropertiesErrorHandlingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-intermediatebucketname
affsdpIntermediateBucketName :: Lens' AppFlowFlowSnowflakeDestinationProperties (Val Text)
affsdpIntermediateBucketName = lens _appFlowFlowSnowflakeDestinationPropertiesIntermediateBucketName (\s a -> s { _appFlowFlowSnowflakeDestinationPropertiesIntermediateBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-object
affsdpObject :: Lens' AppFlowFlowSnowflakeDestinationProperties (Val Text)
affsdpObject = lens _appFlowFlowSnowflakeDestinationPropertiesObject (\s a -> s { _appFlowFlowSnowflakeDestinationPropertiesObject = a })
