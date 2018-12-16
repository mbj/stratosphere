{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-outputfileurivalue.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetOutputFileUriValue where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetOutputFileUriValue. See
-- 'ioTAnalyticsDatasetOutputFileUriValue' for a more convenient
-- constructor.
data IoTAnalyticsDatasetOutputFileUriValue =
  IoTAnalyticsDatasetOutputFileUriValue
  { _ioTAnalyticsDatasetOutputFileUriValueFileName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetOutputFileUriValue where
  toJSON IoTAnalyticsDatasetOutputFileUriValue{..} =
    object $
    catMaybes
    [ fmap (("FileName",) . toJSON) _ioTAnalyticsDatasetOutputFileUriValueFileName
    ]

instance FromJSON IoTAnalyticsDatasetOutputFileUriValue where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetOutputFileUriValue <$>
      (obj .:? "FileName")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetOutputFileUriValue' containing
-- required fields as arguments.
ioTAnalyticsDatasetOutputFileUriValue
  :: IoTAnalyticsDatasetOutputFileUriValue
ioTAnalyticsDatasetOutputFileUriValue  =
  IoTAnalyticsDatasetOutputFileUriValue
  { _ioTAnalyticsDatasetOutputFileUriValueFileName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-outputfileurivalue.html#cfn-iotanalytics-dataset-variable-outputfileurivalue-filename
itadofuvFileName :: Lens' IoTAnalyticsDatasetOutputFileUriValue (Maybe (Val Text))
itadofuvFileName = lens _ioTAnalyticsDatasetOutputFileUriValueFileName (\s a -> s { _ioTAnalyticsDatasetOutputFileUriValueFileName = a })
