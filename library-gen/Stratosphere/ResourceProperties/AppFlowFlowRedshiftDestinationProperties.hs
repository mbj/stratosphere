{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-redshiftdestinationproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowRedshiftDestinationProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowErrorHandlingConfig

-- | Full data type definition for AppFlowFlowRedshiftDestinationProperties.
-- See 'appFlowFlowRedshiftDestinationProperties' for a more convenient
-- constructor.
data AppFlowFlowRedshiftDestinationProperties =
  AppFlowFlowRedshiftDestinationProperties
  { _appFlowFlowRedshiftDestinationPropertiesBucketPrefix :: Maybe (Val Text)
  , _appFlowFlowRedshiftDestinationPropertiesErrorHandlingConfig :: Maybe AppFlowFlowErrorHandlingConfig
  , _appFlowFlowRedshiftDestinationPropertiesIntermediateBucketName :: Val Text
  , _appFlowFlowRedshiftDestinationPropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowRedshiftDestinationProperties where
  toJSON AppFlowFlowRedshiftDestinationProperties{..} =
    object $
    catMaybes
    [ fmap (("BucketPrefix",) . toJSON) _appFlowFlowRedshiftDestinationPropertiesBucketPrefix
    , fmap (("ErrorHandlingConfig",) . toJSON) _appFlowFlowRedshiftDestinationPropertiesErrorHandlingConfig
    , (Just . ("IntermediateBucketName",) . toJSON) _appFlowFlowRedshiftDestinationPropertiesIntermediateBucketName
    , (Just . ("Object",) . toJSON) _appFlowFlowRedshiftDestinationPropertiesObject
    ]

-- | Constructor for 'AppFlowFlowRedshiftDestinationProperties' containing
-- required fields as arguments.
appFlowFlowRedshiftDestinationProperties
  :: Val Text -- ^ 'affrdpIntermediateBucketName'
  -> Val Text -- ^ 'affrdpObject'
  -> AppFlowFlowRedshiftDestinationProperties
appFlowFlowRedshiftDestinationProperties intermediateBucketNamearg objectarg =
  AppFlowFlowRedshiftDestinationProperties
  { _appFlowFlowRedshiftDestinationPropertiesBucketPrefix = Nothing
  , _appFlowFlowRedshiftDestinationPropertiesErrorHandlingConfig = Nothing
  , _appFlowFlowRedshiftDestinationPropertiesIntermediateBucketName = intermediateBucketNamearg
  , _appFlowFlowRedshiftDestinationPropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-redshiftdestinationproperties.html#cfn-appflow-flow-redshiftdestinationproperties-bucketprefix
affrdpBucketPrefix :: Lens' AppFlowFlowRedshiftDestinationProperties (Maybe (Val Text))
affrdpBucketPrefix = lens _appFlowFlowRedshiftDestinationPropertiesBucketPrefix (\s a -> s { _appFlowFlowRedshiftDestinationPropertiesBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-redshiftdestinationproperties.html#cfn-appflow-flow-redshiftdestinationproperties-errorhandlingconfig
affrdpErrorHandlingConfig :: Lens' AppFlowFlowRedshiftDestinationProperties (Maybe AppFlowFlowErrorHandlingConfig)
affrdpErrorHandlingConfig = lens _appFlowFlowRedshiftDestinationPropertiesErrorHandlingConfig (\s a -> s { _appFlowFlowRedshiftDestinationPropertiesErrorHandlingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-redshiftdestinationproperties.html#cfn-appflow-flow-redshiftdestinationproperties-intermediatebucketname
affrdpIntermediateBucketName :: Lens' AppFlowFlowRedshiftDestinationProperties (Val Text)
affrdpIntermediateBucketName = lens _appFlowFlowRedshiftDestinationPropertiesIntermediateBucketName (\s a -> s { _appFlowFlowRedshiftDestinationPropertiesIntermediateBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-redshiftdestinationproperties.html#cfn-appflow-flow-redshiftdestinationproperties-object
affrdpObject :: Lens' AppFlowFlowRedshiftDestinationProperties (Val Text)
affrdpObject = lens _appFlowFlowRedshiftDestinationPropertiesObject (\s a -> s { _appFlowFlowRedshiftDestinationPropertiesObject = a })
