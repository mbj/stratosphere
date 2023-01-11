
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html

module Stratosphere.ResourceProperties.EMRClusterCloudWatchAlarmDefinition where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterMetricDimension

-- | Full data type definition for EMRClusterCloudWatchAlarmDefinition. See
-- 'emrClusterCloudWatchAlarmDefinition' for a more convenient constructor.
data EMRClusterCloudWatchAlarmDefinition =
  EMRClusterCloudWatchAlarmDefinition
  { _eMRClusterCloudWatchAlarmDefinitionComparisonOperator :: Val Text
  , _eMRClusterCloudWatchAlarmDefinitionDimensions :: Maybe [EMRClusterMetricDimension]
  , _eMRClusterCloudWatchAlarmDefinitionEvaluationPeriods :: Maybe (Val Integer)
  , _eMRClusterCloudWatchAlarmDefinitionMetricName :: Val Text
  , _eMRClusterCloudWatchAlarmDefinitionNamespace :: Maybe (Val Text)
  , _eMRClusterCloudWatchAlarmDefinitionPeriod :: Val Integer
  , _eMRClusterCloudWatchAlarmDefinitionStatistic :: Maybe (Val Text)
  , _eMRClusterCloudWatchAlarmDefinitionThreshold :: Val Double
  , _eMRClusterCloudWatchAlarmDefinitionUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRClusterCloudWatchAlarmDefinition where
  toJSON EMRClusterCloudWatchAlarmDefinition{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionComparisonOperator
    , fmap (("Dimensions",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionDimensions
    , fmap (("EvaluationPeriods",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionEvaluationPeriods
    , (Just . ("MetricName",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionMetricName
    , fmap (("Namespace",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionNamespace
    , (Just . ("Period",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionPeriod
    , fmap (("Statistic",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionStatistic
    , (Just . ("Threshold",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionThreshold
    , fmap (("Unit",) . toJSON) _eMRClusterCloudWatchAlarmDefinitionUnit
    ]

-- | Constructor for 'EMRClusterCloudWatchAlarmDefinition' containing required
-- fields as arguments.
emrClusterCloudWatchAlarmDefinition
  :: Val Text -- ^ 'emrccwadComparisonOperator'
  -> Val Text -- ^ 'emrccwadMetricName'
  -> Val Integer -- ^ 'emrccwadPeriod'
  -> Val Double -- ^ 'emrccwadThreshold'
  -> EMRClusterCloudWatchAlarmDefinition
emrClusterCloudWatchAlarmDefinition comparisonOperatorarg metricNamearg periodarg thresholdarg =
  EMRClusterCloudWatchAlarmDefinition
  { _eMRClusterCloudWatchAlarmDefinitionComparisonOperator = comparisonOperatorarg
  , _eMRClusterCloudWatchAlarmDefinitionDimensions = Nothing
  , _eMRClusterCloudWatchAlarmDefinitionEvaluationPeriods = Nothing
  , _eMRClusterCloudWatchAlarmDefinitionMetricName = metricNamearg
  , _eMRClusterCloudWatchAlarmDefinitionNamespace = Nothing
  , _eMRClusterCloudWatchAlarmDefinitionPeriod = periodarg
  , _eMRClusterCloudWatchAlarmDefinitionStatistic = Nothing
  , _eMRClusterCloudWatchAlarmDefinitionThreshold = thresholdarg
  , _eMRClusterCloudWatchAlarmDefinitionUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-comparisonoperator
emrccwadComparisonOperator :: Lens' EMRClusterCloudWatchAlarmDefinition (Val Text)
emrccwadComparisonOperator = lens _eMRClusterCloudWatchAlarmDefinitionComparisonOperator (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-dimensions
emrccwadDimensions :: Lens' EMRClusterCloudWatchAlarmDefinition (Maybe [EMRClusterMetricDimension])
emrccwadDimensions = lens _eMRClusterCloudWatchAlarmDefinitionDimensions (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-evaluationperiods
emrccwadEvaluationPeriods :: Lens' EMRClusterCloudWatchAlarmDefinition (Maybe (Val Integer))
emrccwadEvaluationPeriods = lens _eMRClusterCloudWatchAlarmDefinitionEvaluationPeriods (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionEvaluationPeriods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-metricname
emrccwadMetricName :: Lens' EMRClusterCloudWatchAlarmDefinition (Val Text)
emrccwadMetricName = lens _eMRClusterCloudWatchAlarmDefinitionMetricName (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-namespace
emrccwadNamespace :: Lens' EMRClusterCloudWatchAlarmDefinition (Maybe (Val Text))
emrccwadNamespace = lens _eMRClusterCloudWatchAlarmDefinitionNamespace (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-period
emrccwadPeriod :: Lens' EMRClusterCloudWatchAlarmDefinition (Val Integer)
emrccwadPeriod = lens _eMRClusterCloudWatchAlarmDefinitionPeriod (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-statistic
emrccwadStatistic :: Lens' EMRClusterCloudWatchAlarmDefinition (Maybe (Val Text))
emrccwadStatistic = lens _eMRClusterCloudWatchAlarmDefinitionStatistic (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-threshold
emrccwadThreshold :: Lens' EMRClusterCloudWatchAlarmDefinition (Val Double)
emrccwadThreshold = lens _eMRClusterCloudWatchAlarmDefinitionThreshold (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-cluster-cloudwatchalarmdefinition-unit
emrccwadUnit :: Lens' EMRClusterCloudWatchAlarmDefinition (Maybe (Val Text))
emrccwadUnit = lens _eMRClusterCloudWatchAlarmDefinitionUnit (\s a -> s { _eMRClusterCloudWatchAlarmDefinitionUnit = a })
