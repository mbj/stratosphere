{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html

module Stratosphere.ResourceProperties.ElasticBeanstalkApplicationMaxAgeRule where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticBeanstalkApplicationMaxAgeRule. See
-- 'elasticBeanstalkApplicationMaxAgeRule' for a more convenient
-- constructor.
data ElasticBeanstalkApplicationMaxAgeRule =
  ElasticBeanstalkApplicationMaxAgeRule
  { _elasticBeanstalkApplicationMaxAgeRuleDeleteSourceFromS3 :: Maybe (Val Bool)
  , _elasticBeanstalkApplicationMaxAgeRuleEnabled :: Maybe (Val Bool)
  , _elasticBeanstalkApplicationMaxAgeRuleMaxAgeInDays :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationMaxAgeRule where
  toJSON ElasticBeanstalkApplicationMaxAgeRule{..} =
    object $
    catMaybes
    [ fmap (("DeleteSourceFromS3",) . toJSON . fmap Bool') _elasticBeanstalkApplicationMaxAgeRuleDeleteSourceFromS3
    , fmap (("Enabled",) . toJSON . fmap Bool') _elasticBeanstalkApplicationMaxAgeRuleEnabled
    , fmap (("MaxAgeInDays",) . toJSON . fmap Integer') _elasticBeanstalkApplicationMaxAgeRuleMaxAgeInDays
    ]

instance FromJSON ElasticBeanstalkApplicationMaxAgeRule where
  parseJSON (Object obj) =
    ElasticBeanstalkApplicationMaxAgeRule <$>
      fmap (fmap (fmap unBool')) (obj .:? "DeleteSourceFromS3") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Enabled") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MaxAgeInDays")
  parseJSON _ = mempty

-- | Constructor for 'ElasticBeanstalkApplicationMaxAgeRule' containing
-- required fields as arguments.
elasticBeanstalkApplicationMaxAgeRule
  :: ElasticBeanstalkApplicationMaxAgeRule
elasticBeanstalkApplicationMaxAgeRule  =
  ElasticBeanstalkApplicationMaxAgeRule
  { _elasticBeanstalkApplicationMaxAgeRuleDeleteSourceFromS3 = Nothing
  , _elasticBeanstalkApplicationMaxAgeRuleEnabled = Nothing
  , _elasticBeanstalkApplicationMaxAgeRuleMaxAgeInDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-deletesourcefroms3
ebamarDeleteSourceFromS3 :: Lens' ElasticBeanstalkApplicationMaxAgeRule (Maybe (Val Bool))
ebamarDeleteSourceFromS3 = lens _elasticBeanstalkApplicationMaxAgeRuleDeleteSourceFromS3 (\s a -> s { _elasticBeanstalkApplicationMaxAgeRuleDeleteSourceFromS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-enabled
ebamarEnabled :: Lens' ElasticBeanstalkApplicationMaxAgeRule (Maybe (Val Bool))
ebamarEnabled = lens _elasticBeanstalkApplicationMaxAgeRuleEnabled (\s a -> s { _elasticBeanstalkApplicationMaxAgeRuleEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-maxageindays
ebamarMaxAgeInDays :: Lens' ElasticBeanstalkApplicationMaxAgeRule (Maybe (Val Integer))
ebamarMaxAgeInDays = lens _elasticBeanstalkApplicationMaxAgeRuleMaxAgeInDays (\s a -> s { _elasticBeanstalkApplicationMaxAgeRuleMaxAgeInDays = a })
