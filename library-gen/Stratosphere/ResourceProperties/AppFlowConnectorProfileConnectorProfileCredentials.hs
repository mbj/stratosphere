{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileCredentials where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileAmplitudeConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileDatadogConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileDynatraceConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileInforNexusConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileMarketoConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileRedshiftConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSalesforceConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileServiceNowConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSingularConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSlackConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSnowflakeConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileTrendmicroConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileVeevaConnectorProfileCredentials
import Stratosphere.ResourceProperties.AppFlowConnectorProfileZendeskConnectorProfileCredentials

-- | Full data type definition for
-- AppFlowConnectorProfileConnectorProfileCredentials. See
-- 'appFlowConnectorProfileConnectorProfileCredentials' for a more
-- convenient constructor.
data AppFlowConnectorProfileConnectorProfileCredentials =
  AppFlowConnectorProfileConnectorProfileCredentials
  { _appFlowConnectorProfileConnectorProfileCredentialsAmplitude :: Maybe AppFlowConnectorProfileAmplitudeConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsDatadog :: Maybe AppFlowConnectorProfileDatadogConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsDynatrace :: Maybe AppFlowConnectorProfileDynatraceConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsGoogleAnalytics :: Maybe AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsInforNexus :: Maybe AppFlowConnectorProfileInforNexusConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsMarketo :: Maybe AppFlowConnectorProfileMarketoConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsRedshift :: Maybe AppFlowConnectorProfileRedshiftConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsSalesforce :: Maybe AppFlowConnectorProfileSalesforceConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsServiceNow :: Maybe AppFlowConnectorProfileServiceNowConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsSingular :: Maybe AppFlowConnectorProfileSingularConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsSlack :: Maybe AppFlowConnectorProfileSlackConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsSnowflake :: Maybe AppFlowConnectorProfileSnowflakeConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsTrendmicro :: Maybe AppFlowConnectorProfileTrendmicroConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsVeeva :: Maybe AppFlowConnectorProfileVeevaConnectorProfileCredentials
  , _appFlowConnectorProfileConnectorProfileCredentialsZendesk :: Maybe AppFlowConnectorProfileZendeskConnectorProfileCredentials
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileConnectorProfileCredentials where
  toJSON AppFlowConnectorProfileConnectorProfileCredentials{..} =
    object $
    catMaybes
    [ fmap (("Amplitude",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsAmplitude
    , fmap (("Datadog",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsDatadog
    , fmap (("Dynatrace",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsDynatrace
    , fmap (("GoogleAnalytics",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsGoogleAnalytics
    , fmap (("InforNexus",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsInforNexus
    , fmap (("Marketo",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsMarketo
    , fmap (("Redshift",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsRedshift
    , fmap (("Salesforce",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsSalesforce
    , fmap (("ServiceNow",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsServiceNow
    , fmap (("Singular",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsSingular
    , fmap (("Slack",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsSlack
    , fmap (("Snowflake",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsSnowflake
    , fmap (("Trendmicro",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsTrendmicro
    , fmap (("Veeva",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsVeeva
    , fmap (("Zendesk",) . toJSON) _appFlowConnectorProfileConnectorProfileCredentialsZendesk
    ]

-- | Constructor for 'AppFlowConnectorProfileConnectorProfileCredentials'
-- containing required fields as arguments.
appFlowConnectorProfileConnectorProfileCredentials
  :: AppFlowConnectorProfileConnectorProfileCredentials
appFlowConnectorProfileConnectorProfileCredentials  =
  AppFlowConnectorProfileConnectorProfileCredentials
  { _appFlowConnectorProfileConnectorProfileCredentialsAmplitude = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsDatadog = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsDynatrace = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsGoogleAnalytics = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsInforNexus = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsMarketo = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsRedshift = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsSalesforce = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsServiceNow = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsSingular = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsSlack = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsSnowflake = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsTrendmicro = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsVeeva = Nothing
  , _appFlowConnectorProfileConnectorProfileCredentialsZendesk = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-amplitude
afcpcpcAmplitude :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileAmplitudeConnectorProfileCredentials)
afcpcpcAmplitude = lens _appFlowConnectorProfileConnectorProfileCredentialsAmplitude (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsAmplitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-datadog
afcpcpcDatadog :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileDatadogConnectorProfileCredentials)
afcpcpcDatadog = lens _appFlowConnectorProfileConnectorProfileCredentialsDatadog (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsDatadog = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-dynatrace
afcpcpcDynatrace :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileDynatraceConnectorProfileCredentials)
afcpcpcDynatrace = lens _appFlowConnectorProfileConnectorProfileCredentialsDynatrace (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsDynatrace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-googleanalytics
afcpcpcGoogleAnalytics :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileGoogleAnalyticsConnectorProfileCredentials)
afcpcpcGoogleAnalytics = lens _appFlowConnectorProfileConnectorProfileCredentialsGoogleAnalytics (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsGoogleAnalytics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-infornexus
afcpcpcInforNexus :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileInforNexusConnectorProfileCredentials)
afcpcpcInforNexus = lens _appFlowConnectorProfileConnectorProfileCredentialsInforNexus (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsInforNexus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-marketo
afcpcpcMarketo :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileMarketoConnectorProfileCredentials)
afcpcpcMarketo = lens _appFlowConnectorProfileConnectorProfileCredentialsMarketo (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsMarketo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-redshift
afcpcpcRedshift :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileRedshiftConnectorProfileCredentials)
afcpcpcRedshift = lens _appFlowConnectorProfileConnectorProfileCredentialsRedshift (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsRedshift = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-salesforce
afcpcpcSalesforce :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileSalesforceConnectorProfileCredentials)
afcpcpcSalesforce = lens _appFlowConnectorProfileConnectorProfileCredentialsSalesforce (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsSalesforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-servicenow
afcpcpcServiceNow :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileServiceNowConnectorProfileCredentials)
afcpcpcServiceNow = lens _appFlowConnectorProfileConnectorProfileCredentialsServiceNow (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsServiceNow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-singular
afcpcpcSingular :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileSingularConnectorProfileCredentials)
afcpcpcSingular = lens _appFlowConnectorProfileConnectorProfileCredentialsSingular (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsSingular = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-slack
afcpcpcSlack :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileSlackConnectorProfileCredentials)
afcpcpcSlack = lens _appFlowConnectorProfileConnectorProfileCredentialsSlack (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsSlack = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-snowflake
afcpcpcSnowflake :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileSnowflakeConnectorProfileCredentials)
afcpcpcSnowflake = lens _appFlowConnectorProfileConnectorProfileCredentialsSnowflake (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsSnowflake = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-trendmicro
afcpcpcTrendmicro :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileTrendmicroConnectorProfileCredentials)
afcpcpcTrendmicro = lens _appFlowConnectorProfileConnectorProfileCredentialsTrendmicro (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsTrendmicro = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-veeva
afcpcpcVeeva :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileVeevaConnectorProfileCredentials)
afcpcpcVeeva = lens _appFlowConnectorProfileConnectorProfileCredentialsVeeva (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsVeeva = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-zendesk
afcpcpcZendesk :: Lens' AppFlowConnectorProfileConnectorProfileCredentials (Maybe AppFlowConnectorProfileZendeskConnectorProfileCredentials)
afcpcpcZendesk = lens _appFlowConnectorProfileConnectorProfileCredentialsZendesk (\s a -> s { _appFlowConnectorProfileConnectorProfileCredentialsZendesk = a })
