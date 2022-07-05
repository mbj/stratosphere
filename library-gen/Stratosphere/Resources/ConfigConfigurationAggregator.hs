{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html

module Stratosphere.Resources.ConfigConfigurationAggregator where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigConfigurationAggregatorAccountAggregationSource
import Stratosphere.ResourceProperties.ConfigConfigurationAggregatorOrganizationAggregationSource
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ConfigConfigurationAggregator. See
-- 'configConfigurationAggregator' for a more convenient constructor.
data ConfigConfigurationAggregator =
  ConfigConfigurationAggregator
  { _configConfigurationAggregatorAccountAggregationSources :: Maybe [ConfigConfigurationAggregatorAccountAggregationSource]
  , _configConfigurationAggregatorConfigurationAggregatorName :: Val Text
  , _configConfigurationAggregatorOrganizationAggregationSource :: Maybe ConfigConfigurationAggregatorOrganizationAggregationSource
  , _configConfigurationAggregatorTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ConfigConfigurationAggregator where
  toResourceProperties ConfigConfigurationAggregator{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::ConfigurationAggregator"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccountAggregationSources",) . toJSON) _configConfigurationAggregatorAccountAggregationSources
        , (Just . ("ConfigurationAggregatorName",) . toJSON) _configConfigurationAggregatorConfigurationAggregatorName
        , fmap (("OrganizationAggregationSource",) . toJSON) _configConfigurationAggregatorOrganizationAggregationSource
        , fmap (("Tags",) . toJSON) _configConfigurationAggregatorTags
        ]
    }

-- | Constructor for 'ConfigConfigurationAggregator' containing required
-- fields as arguments.
configConfigurationAggregator
  :: Val Text -- ^ 'ccaConfigurationAggregatorName'
  -> ConfigConfigurationAggregator
configConfigurationAggregator configurationAggregatorNamearg =
  ConfigConfigurationAggregator
  { _configConfigurationAggregatorAccountAggregationSources = Nothing
  , _configConfigurationAggregatorConfigurationAggregatorName = configurationAggregatorNamearg
  , _configConfigurationAggregatorOrganizationAggregationSource = Nothing
  , _configConfigurationAggregatorTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-accountaggregationsources
ccaAccountAggregationSources :: Lens' ConfigConfigurationAggregator (Maybe [ConfigConfigurationAggregatorAccountAggregationSource])
ccaAccountAggregationSources = lens _configConfigurationAggregatorAccountAggregationSources (\s a -> s { _configConfigurationAggregatorAccountAggregationSources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-configurationaggregatorname
ccaConfigurationAggregatorName :: Lens' ConfigConfigurationAggregator (Val Text)
ccaConfigurationAggregatorName = lens _configConfigurationAggregatorConfigurationAggregatorName (\s a -> s { _configConfigurationAggregatorConfigurationAggregatorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-organizationaggregationsource
ccaOrganizationAggregationSource :: Lens' ConfigConfigurationAggregator (Maybe ConfigConfigurationAggregatorOrganizationAggregationSource)
ccaOrganizationAggregationSource = lens _configConfigurationAggregatorOrganizationAggregationSource (\s a -> s { _configConfigurationAggregatorOrganizationAggregationSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-tags
ccaTags :: Lens' ConfigConfigurationAggregator (Maybe [Tag])
ccaTags = lens _configConfigurationAggregatorTags (\s a -> s { _configConfigurationAggregatorTags = a })
