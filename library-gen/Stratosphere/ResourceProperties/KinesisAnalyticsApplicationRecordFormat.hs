
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationRecordFormat where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationMappingParameters

-- | Full data type definition for KinesisAnalyticsApplicationRecordFormat.
-- See 'kinesisAnalyticsApplicationRecordFormat' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationRecordFormat =
  KinesisAnalyticsApplicationRecordFormat
  { _kinesisAnalyticsApplicationRecordFormatMappingParameters :: Maybe KinesisAnalyticsApplicationMappingParameters
  , _kinesisAnalyticsApplicationRecordFormatRecordFormatType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationRecordFormat where
  toJSON KinesisAnalyticsApplicationRecordFormat{..} =
    object $
    catMaybes
    [ fmap (("MappingParameters",) . toJSON) _kinesisAnalyticsApplicationRecordFormatMappingParameters
    , (Just . ("RecordFormatType",) . toJSON) _kinesisAnalyticsApplicationRecordFormatRecordFormatType
    ]

-- | Constructor for 'KinesisAnalyticsApplicationRecordFormat' containing
-- required fields as arguments.
kinesisAnalyticsApplicationRecordFormat
  :: Val Text -- ^ 'kaarfRecordFormatType'
  -> KinesisAnalyticsApplicationRecordFormat
kinesisAnalyticsApplicationRecordFormat recordFormatTypearg =
  KinesisAnalyticsApplicationRecordFormat
  { _kinesisAnalyticsApplicationRecordFormatMappingParameters = Nothing
  , _kinesisAnalyticsApplicationRecordFormatRecordFormatType = recordFormatTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html#cfn-kinesisanalytics-application-recordformat-mappingparameters
kaarfMappingParameters :: Lens' KinesisAnalyticsApplicationRecordFormat (Maybe KinesisAnalyticsApplicationMappingParameters)
kaarfMappingParameters = lens _kinesisAnalyticsApplicationRecordFormatMappingParameters (\s a -> s { _kinesisAnalyticsApplicationRecordFormatMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html#cfn-kinesisanalytics-application-recordformat-recordformattype
kaarfRecordFormatType :: Lens' KinesisAnalyticsApplicationRecordFormat (Val Text)
kaarfRecordFormatType = lens _kinesisAnalyticsApplicationRecordFormatRecordFormatType (\s a -> s { _kinesisAnalyticsApplicationRecordFormatRecordFormatType = a })
