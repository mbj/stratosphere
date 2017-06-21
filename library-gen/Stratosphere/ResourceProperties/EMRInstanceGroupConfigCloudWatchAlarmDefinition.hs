{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigCloudWatchAlarmDefinition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigMetricDimension

-- | Full data type definition for
-- EMRInstanceGroupConfigCloudWatchAlarmDefinition. See
-- 'emrInstanceGroupConfigCloudWatchAlarmDefinition' for a more convenient
-- constructor.
data EMRInstanceGroupConfigCloudWatchAlarmDefinition =
  EMRInstanceGroupConfigCloudWatchAlarmDefinition
  { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator :: Val Text
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions :: Maybe [EMRInstanceGroupConfigMetricDimension]
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods :: Maybe (Val Integer')
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName :: Val Text
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace :: Maybe (Val Text)
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod :: Val Integer'
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic :: Maybe (Val Text)
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold :: Val Double'
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigCloudWatchAlarmDefinition where
  toJSON EMRInstanceGroupConfigCloudWatchAlarmDefinition{..} =
    object $
    catMaybes
    [ Just ("ComparisonOperator" .= _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator)
    , ("Dimensions" .=) <$> _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions
    , ("EvaluationPeriods" .=) <$> _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods
    , Just ("MetricName" .= _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName)
    , ("Namespace" .=) <$> _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace
    , Just ("Period" .= _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod)
    , ("Statistic" .=) <$> _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic
    , Just ("Threshold" .= _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold)
    , ("Unit" .=) <$> _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit
    ]

instance FromJSON EMRInstanceGroupConfigCloudWatchAlarmDefinition where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigCloudWatchAlarmDefinition <$>
      obj .: "ComparisonOperator" <*>
      obj .:? "Dimensions" <*>
      obj .:? "EvaluationPeriods" <*>
      obj .: "MetricName" <*>
      obj .:? "Namespace" <*>
      obj .: "Period" <*>
      obj .:? "Statistic" <*>
      obj .: "Threshold" <*>
      obj .:? "Unit"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigCloudWatchAlarmDefinition'
-- containing required fields as arguments.
emrInstanceGroupConfigCloudWatchAlarmDefinition
  :: Val Text -- ^ 'emrigccwadComparisonOperator'
  -> Val Text -- ^ 'emrigccwadMetricName'
  -> Val Integer' -- ^ 'emrigccwadPeriod'
  -> Val Double' -- ^ 'emrigccwadThreshold'
  -> EMRInstanceGroupConfigCloudWatchAlarmDefinition
emrInstanceGroupConfigCloudWatchAlarmDefinition comparisonOperatorarg metricNamearg periodarg thresholdarg =
  EMRInstanceGroupConfigCloudWatchAlarmDefinition
  { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator = comparisonOperatorarg
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions = Nothing
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods = Nothing
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName = metricNamearg
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace = Nothing
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod = periodarg
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic = Nothing
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold = thresholdarg
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-comparisonoperator
emrigccwadComparisonOperator :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Text)
emrigccwadComparisonOperator = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-dimensions
emrigccwadDimensions :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe [EMRInstanceGroupConfigMetricDimension])
emrigccwadDimensions = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-evaluationperiods
emrigccwadEvaluationPeriods :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Integer'))
emrigccwadEvaluationPeriods = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-metricname
emrigccwadMetricName :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Text)
emrigccwadMetricName = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-namespace
emrigccwadNamespace :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadNamespace = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-period
emrigccwadPeriod :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Integer')
emrigccwadPeriod = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-statistic
emrigccwadStatistic :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadStatistic = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-threshold
emrigccwadThreshold :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Double')
emrigccwadThreshold = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-unit
emrigccwadUnit :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadUnit = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit = a })
