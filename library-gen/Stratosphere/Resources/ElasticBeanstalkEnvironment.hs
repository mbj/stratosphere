{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html

module Stratosphere.Resources.ElasticBeanstalkEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentOptionSetting
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentTier

-- | Full data type definition for ElasticBeanstalkEnvironment. See
-- 'elasticBeanstalkEnvironment' for a more convenient constructor.
data ElasticBeanstalkEnvironment =
  ElasticBeanstalkEnvironment
  { _elasticBeanstalkEnvironmentApplicationName :: Val Text
  , _elasticBeanstalkEnvironmentCNAMEPrefix :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentDescription :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentEnvironmentName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentOptionSettings :: Maybe [ElasticBeanstalkEnvironmentOptionSetting]
  , _elasticBeanstalkEnvironmentPlatformArn :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentSolutionStackName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTags :: Maybe [Tag]
  , _elasticBeanstalkEnvironmentTemplateName :: Maybe (Val Text)
  , _elasticBeanstalkEnvironmentTier :: Maybe ElasticBeanstalkEnvironmentTier
  , _elasticBeanstalkEnvironmentVersionLabel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ElasticBeanstalkEnvironment where
  toResourceProperties ElasticBeanstalkEnvironment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticBeanstalk::Environment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationName",) . toJSON) _elasticBeanstalkEnvironmentApplicationName
        , fmap (("CNAMEPrefix",) . toJSON) _elasticBeanstalkEnvironmentCNAMEPrefix
        , fmap (("Description",) . toJSON) _elasticBeanstalkEnvironmentDescription
        , fmap (("EnvironmentName",) . toJSON) _elasticBeanstalkEnvironmentEnvironmentName
        , fmap (("OptionSettings",) . toJSON) _elasticBeanstalkEnvironmentOptionSettings
        , fmap (("PlatformArn",) . toJSON) _elasticBeanstalkEnvironmentPlatformArn
        , fmap (("SolutionStackName",) . toJSON) _elasticBeanstalkEnvironmentSolutionStackName
        , fmap (("Tags",) . toJSON) _elasticBeanstalkEnvironmentTags
        , fmap (("TemplateName",) . toJSON) _elasticBeanstalkEnvironmentTemplateName
        , fmap (("Tier",) . toJSON) _elasticBeanstalkEnvironmentTier
        , fmap (("VersionLabel",) . toJSON) _elasticBeanstalkEnvironmentVersionLabel
        ]
    }

-- | Constructor for 'ElasticBeanstalkEnvironment' containing required fields
-- as arguments.
elasticBeanstalkEnvironment
  :: Val Text -- ^ 'ebeApplicationName'
  -> ElasticBeanstalkEnvironment
elasticBeanstalkEnvironment applicationNamearg =
  ElasticBeanstalkEnvironment
  { _elasticBeanstalkEnvironmentApplicationName = applicationNamearg
  , _elasticBeanstalkEnvironmentCNAMEPrefix = Nothing
  , _elasticBeanstalkEnvironmentDescription = Nothing
  , _elasticBeanstalkEnvironmentEnvironmentName = Nothing
  , _elasticBeanstalkEnvironmentOptionSettings = Nothing
  , _elasticBeanstalkEnvironmentPlatformArn = Nothing
  , _elasticBeanstalkEnvironmentSolutionStackName = Nothing
  , _elasticBeanstalkEnvironmentTags = Nothing
  , _elasticBeanstalkEnvironmentTemplateName = Nothing
  , _elasticBeanstalkEnvironmentTier = Nothing
  , _elasticBeanstalkEnvironmentVersionLabel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-applicationname
ebeApplicationName :: Lens' ElasticBeanstalkEnvironment (Val Text)
ebeApplicationName = lens _elasticBeanstalkEnvironmentApplicationName (\s a -> s { _elasticBeanstalkEnvironmentApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-cnameprefix
ebeCNAMEPrefix :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeCNAMEPrefix = lens _elasticBeanstalkEnvironmentCNAMEPrefix (\s a -> s { _elasticBeanstalkEnvironmentCNAMEPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-description
ebeDescription :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeDescription = lens _elasticBeanstalkEnvironmentDescription (\s a -> s { _elasticBeanstalkEnvironmentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-name
ebeEnvironmentName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeEnvironmentName = lens _elasticBeanstalkEnvironmentEnvironmentName (\s a -> s { _elasticBeanstalkEnvironmentEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-optionsettings
ebeOptionSettings :: Lens' ElasticBeanstalkEnvironment (Maybe [ElasticBeanstalkEnvironmentOptionSetting])
ebeOptionSettings = lens _elasticBeanstalkEnvironmentOptionSettings (\s a -> s { _elasticBeanstalkEnvironmentOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn
ebePlatformArn :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebePlatformArn = lens _elasticBeanstalkEnvironmentPlatformArn (\s a -> s { _elasticBeanstalkEnvironmentPlatformArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-solutionstackname
ebeSolutionStackName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeSolutionStackName = lens _elasticBeanstalkEnvironmentSolutionStackName (\s a -> s { _elasticBeanstalkEnvironmentSolutionStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-elasticbeanstalk-environment-tags
ebeTags :: Lens' ElasticBeanstalkEnvironment (Maybe [Tag])
ebeTags = lens _elasticBeanstalkEnvironmentTags (\s a -> s { _elasticBeanstalkEnvironmentTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-templatename
ebeTemplateName :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeTemplateName = lens _elasticBeanstalkEnvironmentTemplateName (\s a -> s { _elasticBeanstalkEnvironmentTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-tier
ebeTier :: Lens' ElasticBeanstalkEnvironment (Maybe ElasticBeanstalkEnvironmentTier)
ebeTier = lens _elasticBeanstalkEnvironmentTier (\s a -> s { _elasticBeanstalkEnvironmentTier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-versionlabel
ebeVersionLabel :: Lens' ElasticBeanstalkEnvironment (Maybe (Val Text))
ebeVersionLabel = lens _elasticBeanstalkEnvironmentVersionLabel (\s a -> s { _elasticBeanstalkEnvironmentVersionLabel = a })
