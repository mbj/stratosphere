
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html

module Stratosphere.ResourceProperties.ElasticBeanstalkApplicationApplicationVersionLifecycleConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationMaxAgeRule
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationMaxCountRule

-- | Full data type definition for
-- ElasticBeanstalkApplicationApplicationVersionLifecycleConfig. See
-- 'elasticBeanstalkApplicationApplicationVersionLifecycleConfig' for a more
-- convenient constructor.
data ElasticBeanstalkApplicationApplicationVersionLifecycleConfig =
  ElasticBeanstalkApplicationApplicationVersionLifecycleConfig
  { _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxAgeRule :: Maybe ElasticBeanstalkApplicationMaxAgeRule
  , _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxCountRule :: Maybe ElasticBeanstalkApplicationMaxCountRule
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationApplicationVersionLifecycleConfig where
  toJSON ElasticBeanstalkApplicationApplicationVersionLifecycleConfig{..} =
    object $
    catMaybes
    [ fmap (("MaxAgeRule",) . toJSON) _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxAgeRule
    , fmap (("MaxCountRule",) . toJSON) _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxCountRule
    ]

-- | Constructor for
-- 'ElasticBeanstalkApplicationApplicationVersionLifecycleConfig' containing
-- required fields as arguments.
elasticBeanstalkApplicationApplicationVersionLifecycleConfig
  :: ElasticBeanstalkApplicationApplicationVersionLifecycleConfig
elasticBeanstalkApplicationApplicationVersionLifecycleConfig  =
  ElasticBeanstalkApplicationApplicationVersionLifecycleConfig
  { _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxAgeRule = Nothing
  , _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxCountRule = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule
ebaavlcMaxAgeRule :: Lens' ElasticBeanstalkApplicationApplicationVersionLifecycleConfig (Maybe ElasticBeanstalkApplicationMaxAgeRule)
ebaavlcMaxAgeRule = lens _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxAgeRule (\s a -> s { _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxAgeRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule
ebaavlcMaxCountRule :: Lens' ElasticBeanstalkApplicationApplicationVersionLifecycleConfig (Maybe ElasticBeanstalkApplicationMaxCountRule)
ebaavlcMaxCountRule = lens _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxCountRule (\s a -> s { _elasticBeanstalkApplicationApplicationVersionLifecycleConfigMaxCountRule = a })
