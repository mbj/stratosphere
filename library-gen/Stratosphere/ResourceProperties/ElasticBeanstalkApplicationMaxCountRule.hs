{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html

module Stratosphere.ResourceProperties.ElasticBeanstalkApplicationMaxCountRule where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticBeanstalkApplicationMaxCountRule.
-- See 'elasticBeanstalkApplicationMaxCountRule' for a more convenient
-- constructor.
data ElasticBeanstalkApplicationMaxCountRule =
  ElasticBeanstalkApplicationMaxCountRule
  { _elasticBeanstalkApplicationMaxCountRuleDeleteSourceFromS3 :: Maybe (Val Bool)
  , _elasticBeanstalkApplicationMaxCountRuleEnabled :: Maybe (Val Bool)
  , _elasticBeanstalkApplicationMaxCountRuleMaxCount :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationMaxCountRule where
  toJSON ElasticBeanstalkApplicationMaxCountRule{..} =
    object $
    catMaybes
    [ fmap (("DeleteSourceFromS3",) . toJSON . fmap Bool') _elasticBeanstalkApplicationMaxCountRuleDeleteSourceFromS3
    , fmap (("Enabled",) . toJSON . fmap Bool') _elasticBeanstalkApplicationMaxCountRuleEnabled
    , fmap (("MaxCount",) . toJSON . fmap Integer') _elasticBeanstalkApplicationMaxCountRuleMaxCount
    ]

-- | Constructor for 'ElasticBeanstalkApplicationMaxCountRule' containing
-- required fields as arguments.
elasticBeanstalkApplicationMaxCountRule
  :: ElasticBeanstalkApplicationMaxCountRule
elasticBeanstalkApplicationMaxCountRule  =
  ElasticBeanstalkApplicationMaxCountRule
  { _elasticBeanstalkApplicationMaxCountRuleDeleteSourceFromS3 = Nothing
  , _elasticBeanstalkApplicationMaxCountRuleEnabled = Nothing
  , _elasticBeanstalkApplicationMaxCountRuleMaxCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-deletesourcefroms3
ebamcrDeleteSourceFromS3 :: Lens' ElasticBeanstalkApplicationMaxCountRule (Maybe (Val Bool))
ebamcrDeleteSourceFromS3 = lens _elasticBeanstalkApplicationMaxCountRuleDeleteSourceFromS3 (\s a -> s { _elasticBeanstalkApplicationMaxCountRuleDeleteSourceFromS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-enabled
ebamcrEnabled :: Lens' ElasticBeanstalkApplicationMaxCountRule (Maybe (Val Bool))
ebamcrEnabled = lens _elasticBeanstalkApplicationMaxCountRuleEnabled (\s a -> s { _elasticBeanstalkApplicationMaxCountRuleEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-maxcount
ebamcrMaxCount :: Lens' ElasticBeanstalkApplicationMaxCountRule (Maybe (Val Integer))
ebamcrMaxCount = lens _elasticBeanstalkApplicationMaxCountRuleMaxCount (\s a -> s { _elasticBeanstalkApplicationMaxCountRuleMaxCount = a })
