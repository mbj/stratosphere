{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputDestinationSchema where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationOutputDestinationSchema. See
-- 'kinesisAnalyticsApplicationOutputDestinationSchema' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationOutputDestinationSchema =
  KinesisAnalyticsApplicationOutputDestinationSchema
  { _kinesisAnalyticsApplicationOutputDestinationSchemaRecordFormatType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationOutputDestinationSchema where
  toJSON KinesisAnalyticsApplicationOutputDestinationSchema{..} =
    object $
    catMaybes
    [ fmap (("RecordFormatType",) . toJSON) _kinesisAnalyticsApplicationOutputDestinationSchemaRecordFormatType
    ]

-- | Constructor for 'KinesisAnalyticsApplicationOutputDestinationSchema'
-- containing required fields as arguments.
kinesisAnalyticsApplicationOutputDestinationSchema
  :: KinesisAnalyticsApplicationOutputDestinationSchema
kinesisAnalyticsApplicationOutputDestinationSchema  =
  KinesisAnalyticsApplicationOutputDestinationSchema
  { _kinesisAnalyticsApplicationOutputDestinationSchemaRecordFormatType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html#cfn-kinesisanalytics-applicationoutput-destinationschema-recordformattype
kaaodsRecordFormatType :: Lens' KinesisAnalyticsApplicationOutputDestinationSchema (Maybe (Val Text))
kaaodsRecordFormatType = lens _kinesisAnalyticsApplicationOutputDestinationSchemaRecordFormatType (\s a -> s { _kinesisAnalyticsApplicationOutputDestinationSchemaRecordFormatType = a })
