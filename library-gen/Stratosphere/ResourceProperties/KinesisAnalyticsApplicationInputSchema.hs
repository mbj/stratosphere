
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputSchema where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationRecordColumn
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationRecordFormat

-- | Full data type definition for KinesisAnalyticsApplicationInputSchema. See
-- 'kinesisAnalyticsApplicationInputSchema' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationInputSchema =
  KinesisAnalyticsApplicationInputSchema
  { _kinesisAnalyticsApplicationInputSchemaRecordColumns :: [KinesisAnalyticsApplicationRecordColumn]
  , _kinesisAnalyticsApplicationInputSchemaRecordEncoding :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationInputSchemaRecordFormat :: KinesisAnalyticsApplicationRecordFormat
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationInputSchema where
  toJSON KinesisAnalyticsApplicationInputSchema{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumns",) . toJSON) _kinesisAnalyticsApplicationInputSchemaRecordColumns
    , fmap (("RecordEncoding",) . toJSON) _kinesisAnalyticsApplicationInputSchemaRecordEncoding
    , (Just . ("RecordFormat",) . toJSON) _kinesisAnalyticsApplicationInputSchemaRecordFormat
    ]

-- | Constructor for 'KinesisAnalyticsApplicationInputSchema' containing
-- required fields as arguments.
kinesisAnalyticsApplicationInputSchema
  :: [KinesisAnalyticsApplicationRecordColumn] -- ^ 'kaaisRecordColumns'
  -> KinesisAnalyticsApplicationRecordFormat -- ^ 'kaaisRecordFormat'
  -> KinesisAnalyticsApplicationInputSchema
kinesisAnalyticsApplicationInputSchema recordColumnsarg recordFormatarg =
  KinesisAnalyticsApplicationInputSchema
  { _kinesisAnalyticsApplicationInputSchemaRecordColumns = recordColumnsarg
  , _kinesisAnalyticsApplicationInputSchemaRecordEncoding = Nothing
  , _kinesisAnalyticsApplicationInputSchemaRecordFormat = recordFormatarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordcolumns
kaaisRecordColumns :: Lens' KinesisAnalyticsApplicationInputSchema [KinesisAnalyticsApplicationRecordColumn]
kaaisRecordColumns = lens _kinesisAnalyticsApplicationInputSchemaRecordColumns (\s a -> s { _kinesisAnalyticsApplicationInputSchemaRecordColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordencoding
kaaisRecordEncoding :: Lens' KinesisAnalyticsApplicationInputSchema (Maybe (Val Text))
kaaisRecordEncoding = lens _kinesisAnalyticsApplicationInputSchemaRecordEncoding (\s a -> s { _kinesisAnalyticsApplicationInputSchemaRecordEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordformat
kaaisRecordFormat :: Lens' KinesisAnalyticsApplicationInputSchema KinesisAnalyticsApplicationRecordFormat
kaaisRecordFormat = lens _kinesisAnalyticsApplicationInputSchemaRecordFormat (\s a -> s { _kinesisAnalyticsApplicationInputSchemaRecordFormat = a })
