
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigCloudWatchAlarmDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigMetricDimension

-- | Full data type definition for
-- EMRInstanceGroupConfigCloudWatchAlarmDefinition. See
-- 'emrInstanceGroupConfigCloudWatchAlarmDefinition' for a more convenient
-- constructor.
data EMRInstanceGroupConfigCloudWatchAlarmDefinition =
  EMRInstanceGroupConfigCloudWatchAlarmDefinition
  { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator :: Val Text
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions :: Maybe [EMRInstanceGroupConfigMetricDimension]
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods :: Maybe (Val Integer)
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName :: Val Text
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace :: Maybe (Val Text)
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod :: Val Integer
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic :: Maybe (Val Text)
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold :: Val Double
  , _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigCloudWatchAlarmDefinition where
  toJSON EMRInstanceGroupConfigCloudWatchAlarmDefinition{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionComparisonOperator
    , fmap (("Dimensions",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionDimensions
    , fmap (("EvaluationPeriods",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods
    , (Just . ("MetricName",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName
    , fmap (("Namespace",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace
    , (Just . ("Period",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod
    , fmap (("Statistic",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic
    , (Just . ("Threshold",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold
    , fmap (("Unit",) . toJSON) _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit
    ]

-- | Constructor for 'EMRInstanceGroupConfigCloudWatchAlarmDefinition'
-- containing required fields as arguments.
emrInstanceGroupConfigCloudWatchAlarmDefinition
  :: Val Text -- ^ 'emrigccwadComparisonOperator'
  -> Val Text -- ^ 'emrigccwadMetricName'
  -> Val Integer -- ^ 'emrigccwadPeriod'
  -> Val Double -- ^ 'emrigccwadThreshold'
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
emrigccwadEvaluationPeriods :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Integer))
emrigccwadEvaluationPeriods = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionEvaluationPeriods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-metricname
emrigccwadMetricName :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Text)
emrigccwadMetricName = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-namespace
emrigccwadNamespace :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadNamespace = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-period
emrigccwadPeriod :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Integer)
emrigccwadPeriod = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-statistic
emrigccwadStatistic :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadStatistic = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-threshold
emrigccwadThreshold :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Val Double)
emrigccwadThreshold = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-unit
emrigccwadUnit :: Lens' EMRInstanceGroupConfigCloudWatchAlarmDefinition (Maybe (Val Text))
emrigccwadUnit = lens _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit (\s a -> s { _eMRInstanceGroupConfigCloudWatchAlarmDefinitionUnit = a })
