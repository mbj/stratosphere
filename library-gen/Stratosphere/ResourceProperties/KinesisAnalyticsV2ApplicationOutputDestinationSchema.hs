{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputDestinationSchema where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationOutputDestinationSchema. See
-- 'kinesisAnalyticsV2ApplicationOutputDestinationSchema' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationOutputDestinationSchema =
  KinesisAnalyticsV2ApplicationOutputDestinationSchema
  { _kinesisAnalyticsV2ApplicationOutputDestinationSchemaRecordFormatType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutputDestinationSchema where
  toJSON KinesisAnalyticsV2ApplicationOutputDestinationSchema{..} =
    object $
    catMaybes
    [ fmap (("RecordFormatType",) . toJSON) _kinesisAnalyticsV2ApplicationOutputDestinationSchemaRecordFormatType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationOutputDestinationSchema where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationOutputDestinationSchema <$>
      (obj .:? "RecordFormatType")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationOutputDestinationSchema'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationOutputDestinationSchema
  :: KinesisAnalyticsV2ApplicationOutputDestinationSchema
kinesisAnalyticsV2ApplicationOutputDestinationSchema  =
  KinesisAnalyticsV2ApplicationOutputDestinationSchema
  { _kinesisAnalyticsV2ApplicationOutputDestinationSchemaRecordFormatType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html#cfn-kinesisanalyticsv2-applicationoutput-destinationschema-recordformattype
kavaodsRecordFormatType :: Lens' KinesisAnalyticsV2ApplicationOutputDestinationSchema (Maybe (Val Text))
kavaodsRecordFormatType = lens _kinesisAnalyticsV2ApplicationOutputDestinationSchemaRecordFormatType (\s a -> s { _kinesisAnalyticsV2ApplicationOutputDestinationSchemaRecordFormatType = a })
