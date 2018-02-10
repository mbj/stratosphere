{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html

module Stratosphere.ResourceProperties.ElasticBeanstalkApplicationApplicationResourceLifecycleConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationApplicationVersionLifecycleConfig

-- | Full data type definition for
-- ElasticBeanstalkApplicationApplicationResourceLifecycleConfig. See
-- 'elasticBeanstalkApplicationApplicationResourceLifecycleConfig' for a
-- more convenient constructor.
data ElasticBeanstalkApplicationApplicationResourceLifecycleConfig =
  ElasticBeanstalkApplicationApplicationResourceLifecycleConfig
  { _elasticBeanstalkApplicationApplicationResourceLifecycleConfigServiceRole :: Maybe (Val Text)
  , _elasticBeanstalkApplicationApplicationResourceLifecycleConfigVersionLifecycleConfig :: Maybe ElasticBeanstalkApplicationApplicationVersionLifecycleConfig
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationApplicationResourceLifecycleConfig where
  toJSON ElasticBeanstalkApplicationApplicationResourceLifecycleConfig{..} =
    object $
    catMaybes
    [ fmap (("ServiceRole",) . toJSON) _elasticBeanstalkApplicationApplicationResourceLifecycleConfigServiceRole
    , fmap (("VersionLifecycleConfig",) . toJSON) _elasticBeanstalkApplicationApplicationResourceLifecycleConfigVersionLifecycleConfig
    ]

instance FromJSON ElasticBeanstalkApplicationApplicationResourceLifecycleConfig where
  parseJSON (Object obj) =
    ElasticBeanstalkApplicationApplicationResourceLifecycleConfig <$>
      (obj .:? "ServiceRole") <*>
      (obj .:? "VersionLifecycleConfig")
  parseJSON _ = mempty

-- | Constructor for
-- 'ElasticBeanstalkApplicationApplicationResourceLifecycleConfig'
-- containing required fields as arguments.
elasticBeanstalkApplicationApplicationResourceLifecycleConfig
  :: ElasticBeanstalkApplicationApplicationResourceLifecycleConfig
elasticBeanstalkApplicationApplicationResourceLifecycleConfig  =
  ElasticBeanstalkApplicationApplicationResourceLifecycleConfig
  { _elasticBeanstalkApplicationApplicationResourceLifecycleConfigServiceRole = Nothing
  , _elasticBeanstalkApplicationApplicationResourceLifecycleConfigVersionLifecycleConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-servicerole
ebaarlcServiceRole :: Lens' ElasticBeanstalkApplicationApplicationResourceLifecycleConfig (Maybe (Val Text))
ebaarlcServiceRole = lens _elasticBeanstalkApplicationApplicationResourceLifecycleConfigServiceRole (\s a -> s { _elasticBeanstalkApplicationApplicationResourceLifecycleConfigServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-versionlifecycleconfig
ebaarlcVersionLifecycleConfig :: Lens' ElasticBeanstalkApplicationApplicationResourceLifecycleConfig (Maybe ElasticBeanstalkApplicationApplicationVersionLifecycleConfig)
ebaarlcVersionLifecycleConfig = lens _elasticBeanstalkApplicationApplicationResourceLifecycleConfigVersionLifecycleConfig (\s a -> s { _elasticBeanstalkApplicationApplicationResourceLifecycleConfigVersionLifecycleConfig = a })
