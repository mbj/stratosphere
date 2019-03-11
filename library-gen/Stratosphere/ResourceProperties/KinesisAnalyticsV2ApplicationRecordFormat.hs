{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationRecordFormat where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationMappingParameters

-- | Full data type definition for KinesisAnalyticsV2ApplicationRecordFormat.
-- See 'kinesisAnalyticsV2ApplicationRecordFormat' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationRecordFormat =
  KinesisAnalyticsV2ApplicationRecordFormat
  { _kinesisAnalyticsV2ApplicationRecordFormatMappingParameters :: Maybe KinesisAnalyticsV2ApplicationMappingParameters
  , _kinesisAnalyticsV2ApplicationRecordFormatRecordFormatType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationRecordFormat where
  toJSON KinesisAnalyticsV2ApplicationRecordFormat{..} =
    object $
    catMaybes
    [ fmap (("MappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationRecordFormatMappingParameters
    , (Just . ("RecordFormatType",) . toJSON) _kinesisAnalyticsV2ApplicationRecordFormatRecordFormatType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationRecordFormat where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationRecordFormat <$>
      (obj .:? "MappingParameters") <*>
      (obj .: "RecordFormatType")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationRecordFormat' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationRecordFormat
  :: Val Text -- ^ 'kavarfRecordFormatType'
  -> KinesisAnalyticsV2ApplicationRecordFormat
kinesisAnalyticsV2ApplicationRecordFormat recordFormatTypearg =
  KinesisAnalyticsV2ApplicationRecordFormat
  { _kinesisAnalyticsV2ApplicationRecordFormatMappingParameters = Nothing
  , _kinesisAnalyticsV2ApplicationRecordFormatRecordFormatType = recordFormatTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-mappingparameters
kavarfMappingParameters :: Lens' KinesisAnalyticsV2ApplicationRecordFormat (Maybe KinesisAnalyticsV2ApplicationMappingParameters)
kavarfMappingParameters = lens _kinesisAnalyticsV2ApplicationRecordFormatMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationRecordFormatMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-recordformattype
kavarfRecordFormatType :: Lens' KinesisAnalyticsV2ApplicationRecordFormat (Val Text)
kavarfRecordFormatType = lens _kinesisAnalyticsV2ApplicationRecordFormatRecordFormatType (\s a -> s { _kinesisAnalyticsV2ApplicationRecordFormatRecordFormatType = a })
