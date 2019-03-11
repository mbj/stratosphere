{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html

module Stratosphere.Resources.KinesisAnalyticsV2ApplicationOutput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputOutput

-- | Full data type definition for KinesisAnalyticsV2ApplicationOutput. See
-- 'kinesisAnalyticsV2ApplicationOutput' for a more convenient constructor.
data KinesisAnalyticsV2ApplicationOutput =
  KinesisAnalyticsV2ApplicationOutput
  { _kinesisAnalyticsV2ApplicationOutputApplicationName :: Val Text
  , _kinesisAnalyticsV2ApplicationOutputOutput :: KinesisAnalyticsV2ApplicationOutputOutput
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutput where
  toJSON KinesisAnalyticsV2ApplicationOutput{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _kinesisAnalyticsV2ApplicationOutputApplicationName
    , (Just . ("Output",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutput
    ]

instance FromJSON KinesisAnalyticsV2ApplicationOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationOutput <$>
      (obj .: "ApplicationName") <*>
      (obj .: "Output")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationOutput' containing required
-- fields as arguments.
kinesisAnalyticsV2ApplicationOutput
  :: Val Text -- ^ 'kavaoApplicationName'
  -> KinesisAnalyticsV2ApplicationOutputOutput -- ^ 'kavaoOutput'
  -> KinesisAnalyticsV2ApplicationOutput
kinesisAnalyticsV2ApplicationOutput applicationNamearg outputarg =
  KinesisAnalyticsV2ApplicationOutput
  { _kinesisAnalyticsV2ApplicationOutputApplicationName = applicationNamearg
  , _kinesisAnalyticsV2ApplicationOutputOutput = outputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-applicationname
kavaoApplicationName :: Lens' KinesisAnalyticsV2ApplicationOutput (Val Text)
kavaoApplicationName = lens _kinesisAnalyticsV2ApplicationOutputApplicationName (\s a -> s { _kinesisAnalyticsV2ApplicationOutputApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-output
kavaoOutput :: Lens' KinesisAnalyticsV2ApplicationOutput KinesisAnalyticsV2ApplicationOutputOutput
kavaoOutput = lens _kinesisAnalyticsV2ApplicationOutputOutput (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutput = a })
