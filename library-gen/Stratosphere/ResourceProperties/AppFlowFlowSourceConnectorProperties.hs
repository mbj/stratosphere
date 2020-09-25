{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSourceConnectorProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowAmplitudeSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowDatadogSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowDynatraceSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowGoogleAnalyticsSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowInforNexusSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowMarketoSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowS3SourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowSalesforceSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowServiceNowSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowSingularSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowSlackSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowTrendmicroSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowVeevaSourceProperties
import Stratosphere.ResourceProperties.AppFlowFlowZendeskSourceProperties

-- | Full data type definition for AppFlowFlowSourceConnectorProperties. See
-- 'appFlowFlowSourceConnectorProperties' for a more convenient constructor.
data AppFlowFlowSourceConnectorProperties =
  AppFlowFlowSourceConnectorProperties
  { _appFlowFlowSourceConnectorPropertiesAmplitude :: Maybe AppFlowFlowAmplitudeSourceProperties
  , _appFlowFlowSourceConnectorPropertiesDatadog :: Maybe AppFlowFlowDatadogSourceProperties
  , _appFlowFlowSourceConnectorPropertiesDynatrace :: Maybe AppFlowFlowDynatraceSourceProperties
  , _appFlowFlowSourceConnectorPropertiesGoogleAnalytics :: Maybe AppFlowFlowGoogleAnalyticsSourceProperties
  , _appFlowFlowSourceConnectorPropertiesInforNexus :: Maybe AppFlowFlowInforNexusSourceProperties
  , _appFlowFlowSourceConnectorPropertiesMarketo :: Maybe AppFlowFlowMarketoSourceProperties
  , _appFlowFlowSourceConnectorPropertiesS3 :: Maybe AppFlowFlowS3SourceProperties
  , _appFlowFlowSourceConnectorPropertiesSalesforce :: Maybe AppFlowFlowSalesforceSourceProperties
  , _appFlowFlowSourceConnectorPropertiesServiceNow :: Maybe AppFlowFlowServiceNowSourceProperties
  , _appFlowFlowSourceConnectorPropertiesSingular :: Maybe AppFlowFlowSingularSourceProperties
  , _appFlowFlowSourceConnectorPropertiesSlack :: Maybe AppFlowFlowSlackSourceProperties
  , _appFlowFlowSourceConnectorPropertiesTrendmicro :: Maybe AppFlowFlowTrendmicroSourceProperties
  , _appFlowFlowSourceConnectorPropertiesVeeva :: Maybe AppFlowFlowVeevaSourceProperties
  , _appFlowFlowSourceConnectorPropertiesZendesk :: Maybe AppFlowFlowZendeskSourceProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSourceConnectorProperties where
  toJSON AppFlowFlowSourceConnectorProperties{..} =
    object $
    catMaybes
    [ fmap (("Amplitude",) . toJSON) _appFlowFlowSourceConnectorPropertiesAmplitude
    , fmap (("Datadog",) . toJSON) _appFlowFlowSourceConnectorPropertiesDatadog
    , fmap (("Dynatrace",) . toJSON) _appFlowFlowSourceConnectorPropertiesDynatrace
    , fmap (("GoogleAnalytics",) . toJSON) _appFlowFlowSourceConnectorPropertiesGoogleAnalytics
    , fmap (("InforNexus",) . toJSON) _appFlowFlowSourceConnectorPropertiesInforNexus
    , fmap (("Marketo",) . toJSON) _appFlowFlowSourceConnectorPropertiesMarketo
    , fmap (("S3",) . toJSON) _appFlowFlowSourceConnectorPropertiesS3
    , fmap (("Salesforce",) . toJSON) _appFlowFlowSourceConnectorPropertiesSalesforce
    , fmap (("ServiceNow",) . toJSON) _appFlowFlowSourceConnectorPropertiesServiceNow
    , fmap (("Singular",) . toJSON) _appFlowFlowSourceConnectorPropertiesSingular
    , fmap (("Slack",) . toJSON) _appFlowFlowSourceConnectorPropertiesSlack
    , fmap (("Trendmicro",) . toJSON) _appFlowFlowSourceConnectorPropertiesTrendmicro
    , fmap (("Veeva",) . toJSON) _appFlowFlowSourceConnectorPropertiesVeeva
    , fmap (("Zendesk",) . toJSON) _appFlowFlowSourceConnectorPropertiesZendesk
    ]

-- | Constructor for 'AppFlowFlowSourceConnectorProperties' containing
-- required fields as arguments.
appFlowFlowSourceConnectorProperties
  :: AppFlowFlowSourceConnectorProperties
appFlowFlowSourceConnectorProperties  =
  AppFlowFlowSourceConnectorProperties
  { _appFlowFlowSourceConnectorPropertiesAmplitude = Nothing
  , _appFlowFlowSourceConnectorPropertiesDatadog = Nothing
  , _appFlowFlowSourceConnectorPropertiesDynatrace = Nothing
  , _appFlowFlowSourceConnectorPropertiesGoogleAnalytics = Nothing
  , _appFlowFlowSourceConnectorPropertiesInforNexus = Nothing
  , _appFlowFlowSourceConnectorPropertiesMarketo = Nothing
  , _appFlowFlowSourceConnectorPropertiesS3 = Nothing
  , _appFlowFlowSourceConnectorPropertiesSalesforce = Nothing
  , _appFlowFlowSourceConnectorPropertiesServiceNow = Nothing
  , _appFlowFlowSourceConnectorPropertiesSingular = Nothing
  , _appFlowFlowSourceConnectorPropertiesSlack = Nothing
  , _appFlowFlowSourceConnectorPropertiesTrendmicro = Nothing
  , _appFlowFlowSourceConnectorPropertiesVeeva = Nothing
  , _appFlowFlowSourceConnectorPropertiesZendesk = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-amplitude
affscpAmplitude :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowAmplitudeSourceProperties)
affscpAmplitude = lens _appFlowFlowSourceConnectorPropertiesAmplitude (\s a -> s { _appFlowFlowSourceConnectorPropertiesAmplitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-datadog
affscpDatadog :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowDatadogSourceProperties)
affscpDatadog = lens _appFlowFlowSourceConnectorPropertiesDatadog (\s a -> s { _appFlowFlowSourceConnectorPropertiesDatadog = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-dynatrace
affscpDynatrace :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowDynatraceSourceProperties)
affscpDynatrace = lens _appFlowFlowSourceConnectorPropertiesDynatrace (\s a -> s { _appFlowFlowSourceConnectorPropertiesDynatrace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-googleanalytics
affscpGoogleAnalytics :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowGoogleAnalyticsSourceProperties)
affscpGoogleAnalytics = lens _appFlowFlowSourceConnectorPropertiesGoogleAnalytics (\s a -> s { _appFlowFlowSourceConnectorPropertiesGoogleAnalytics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-infornexus
affscpInforNexus :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowInforNexusSourceProperties)
affscpInforNexus = lens _appFlowFlowSourceConnectorPropertiesInforNexus (\s a -> s { _appFlowFlowSourceConnectorPropertiesInforNexus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-marketo
affscpMarketo :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowMarketoSourceProperties)
affscpMarketo = lens _appFlowFlowSourceConnectorPropertiesMarketo (\s a -> s { _appFlowFlowSourceConnectorPropertiesMarketo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-s3
affscpS3 :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowS3SourceProperties)
affscpS3 = lens _appFlowFlowSourceConnectorPropertiesS3 (\s a -> s { _appFlowFlowSourceConnectorPropertiesS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-salesforce
affscpSalesforce :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowSalesforceSourceProperties)
affscpSalesforce = lens _appFlowFlowSourceConnectorPropertiesSalesforce (\s a -> s { _appFlowFlowSourceConnectorPropertiesSalesforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-servicenow
affscpServiceNow :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowServiceNowSourceProperties)
affscpServiceNow = lens _appFlowFlowSourceConnectorPropertiesServiceNow (\s a -> s { _appFlowFlowSourceConnectorPropertiesServiceNow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-singular
affscpSingular :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowSingularSourceProperties)
affscpSingular = lens _appFlowFlowSourceConnectorPropertiesSingular (\s a -> s { _appFlowFlowSourceConnectorPropertiesSingular = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-slack
affscpSlack :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowSlackSourceProperties)
affscpSlack = lens _appFlowFlowSourceConnectorPropertiesSlack (\s a -> s { _appFlowFlowSourceConnectorPropertiesSlack = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-trendmicro
affscpTrendmicro :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowTrendmicroSourceProperties)
affscpTrendmicro = lens _appFlowFlowSourceConnectorPropertiesTrendmicro (\s a -> s { _appFlowFlowSourceConnectorPropertiesTrendmicro = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-veeva
affscpVeeva :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowVeevaSourceProperties)
affscpVeeva = lens _appFlowFlowSourceConnectorPropertiesVeeva (\s a -> s { _appFlowFlowSourceConnectorPropertiesVeeva = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-zendesk
affscpZendesk :: Lens' AppFlowFlowSourceConnectorProperties (Maybe AppFlowFlowZendeskSourceProperties)
affscpZendesk = lens _appFlowFlowSourceConnectorPropertiesZendesk (\s a -> s { _appFlowFlowSourceConnectorPropertiesZendesk = a })
