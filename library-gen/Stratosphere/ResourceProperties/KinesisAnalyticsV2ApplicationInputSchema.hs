{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputSchema where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationRecordColumn
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationRecordFormat

-- | Full data type definition for KinesisAnalyticsV2ApplicationInputSchema.
-- See 'kinesisAnalyticsV2ApplicationInputSchema' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationInputSchema =
  KinesisAnalyticsV2ApplicationInputSchema
  { _kinesisAnalyticsV2ApplicationInputSchemaRecordColumns :: [KinesisAnalyticsV2ApplicationRecordColumn]
  , _kinesisAnalyticsV2ApplicationInputSchemaRecordEncoding :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationInputSchemaRecordFormat :: KinesisAnalyticsV2ApplicationRecordFormat
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationInputSchema where
  toJSON KinesisAnalyticsV2ApplicationInputSchema{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumns",) . toJSON) _kinesisAnalyticsV2ApplicationInputSchemaRecordColumns
    , fmap (("RecordEncoding",) . toJSON) _kinesisAnalyticsV2ApplicationInputSchemaRecordEncoding
    , (Just . ("RecordFormat",) . toJSON) _kinesisAnalyticsV2ApplicationInputSchemaRecordFormat
    ]

instance FromJSON KinesisAnalyticsV2ApplicationInputSchema where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationInputSchema <$>
      (obj .: "RecordColumns") <*>
      (obj .:? "RecordEncoding") <*>
      (obj .: "RecordFormat")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationInputSchema' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationInputSchema
  :: [KinesisAnalyticsV2ApplicationRecordColumn] -- ^ 'kavaisRecordColumns'
  -> KinesisAnalyticsV2ApplicationRecordFormat -- ^ 'kavaisRecordFormat'
  -> KinesisAnalyticsV2ApplicationInputSchema
kinesisAnalyticsV2ApplicationInputSchema recordColumnsarg recordFormatarg =
  KinesisAnalyticsV2ApplicationInputSchema
  { _kinesisAnalyticsV2ApplicationInputSchemaRecordColumns = recordColumnsarg
  , _kinesisAnalyticsV2ApplicationInputSchemaRecordEncoding = Nothing
  , _kinesisAnalyticsV2ApplicationInputSchemaRecordFormat = recordFormatarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordcolumns
kavaisRecordColumns :: Lens' KinesisAnalyticsV2ApplicationInputSchema [KinesisAnalyticsV2ApplicationRecordColumn]
kavaisRecordColumns = lens _kinesisAnalyticsV2ApplicationInputSchemaRecordColumns (\s a -> s { _kinesisAnalyticsV2ApplicationInputSchemaRecordColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordencoding
kavaisRecordEncoding :: Lens' KinesisAnalyticsV2ApplicationInputSchema (Maybe (Val Text))
kavaisRecordEncoding = lens _kinesisAnalyticsV2ApplicationInputSchemaRecordEncoding (\s a -> s { _kinesisAnalyticsV2ApplicationInputSchemaRecordEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordformat
kavaisRecordFormat :: Lens' KinesisAnalyticsV2ApplicationInputSchema KinesisAnalyticsV2ApplicationRecordFormat
kavaisRecordFormat = lens _kinesisAnalyticsV2ApplicationInputSchemaRecordFormat (\s a -> s { _kinesisAnalyticsV2ApplicationInputSchemaRecordFormat = a })
