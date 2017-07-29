{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters' for
-- a more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters =
  KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter :: Val Text
  , _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumnDelimiter",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter
    , (Just . ("RecordRowDelimiter",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter
    ]

instance FromJSON KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters <$>
      (obj .: "RecordColumnDelimiter") <*>
      (obj .: "RecordRowDelimiter")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
  :: Val Text -- ^ 'kaardscsvmpRecordColumnDelimiter'
  -> Val Text -- ^ 'kaardscsvmpRecordRowDelimiter'
  -> KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters recordColumnDelimiterarg recordRowDelimiterarg =
  KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter = recordColumnDelimiterarg
  , _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter = recordRowDelimiterarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-csvmappingparameters-recordcolumndelimiter
kaardscsvmpRecordColumnDelimiter :: Lens' KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters (Val Text)
kaardscsvmpRecordColumnDelimiter = lens _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-csvmappingparameters-recordrowdelimiter
kaardscsvmpRecordRowDelimiter :: Lens' KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters (Val Text)
kaardscsvmpRecordRowDelimiter = lens _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter = a })
