{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileConnectorProfileProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowConnectorProfileDatadogConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileDynatraceConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileInforNexusConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileMarketoConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileRedshiftConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSalesforceConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileServiceNowConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSlackConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileSnowflakeConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileVeevaConnectorProfileProperties
import Stratosphere.ResourceProperties.AppFlowConnectorProfileZendeskConnectorProfileProperties

-- | Full data type definition for
-- AppFlowConnectorProfileConnectorProfileProperties. See
-- 'appFlowConnectorProfileConnectorProfileProperties' for a more convenient
-- constructor.
data AppFlowConnectorProfileConnectorProfileProperties =
  AppFlowConnectorProfileConnectorProfileProperties
  { _appFlowConnectorProfileConnectorProfilePropertiesDatadog :: Maybe AppFlowConnectorProfileDatadogConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesDynatrace :: Maybe AppFlowConnectorProfileDynatraceConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesInforNexus :: Maybe AppFlowConnectorProfileInforNexusConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesMarketo :: Maybe AppFlowConnectorProfileMarketoConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesRedshift :: Maybe AppFlowConnectorProfileRedshiftConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesSalesforce :: Maybe AppFlowConnectorProfileSalesforceConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesServiceNow :: Maybe AppFlowConnectorProfileServiceNowConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesSlack :: Maybe AppFlowConnectorProfileSlackConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesSnowflake :: Maybe AppFlowConnectorProfileSnowflakeConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesVeeva :: Maybe AppFlowConnectorProfileVeevaConnectorProfileProperties
  , _appFlowConnectorProfileConnectorProfilePropertiesZendesk :: Maybe AppFlowConnectorProfileZendeskConnectorProfileProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileConnectorProfileProperties where
  toJSON AppFlowConnectorProfileConnectorProfileProperties{..} =
    object $
    catMaybes
    [ fmap (("Datadog",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesDatadog
    , fmap (("Dynatrace",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesDynatrace
    , fmap (("InforNexus",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesInforNexus
    , fmap (("Marketo",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesMarketo
    , fmap (("Redshift",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesRedshift
    , fmap (("Salesforce",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesSalesforce
    , fmap (("ServiceNow",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesServiceNow
    , fmap (("Slack",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesSlack
    , fmap (("Snowflake",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesSnowflake
    , fmap (("Veeva",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesVeeva
    , fmap (("Zendesk",) . toJSON) _appFlowConnectorProfileConnectorProfilePropertiesZendesk
    ]

-- | Constructor for 'AppFlowConnectorProfileConnectorProfileProperties'
-- containing required fields as arguments.
appFlowConnectorProfileConnectorProfileProperties
  :: AppFlowConnectorProfileConnectorProfileProperties
appFlowConnectorProfileConnectorProfileProperties  =
  AppFlowConnectorProfileConnectorProfileProperties
  { _appFlowConnectorProfileConnectorProfilePropertiesDatadog = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesDynatrace = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesInforNexus = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesMarketo = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesRedshift = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesSalesforce = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesServiceNow = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesSlack = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesSnowflake = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesVeeva = Nothing
  , _appFlowConnectorProfileConnectorProfilePropertiesZendesk = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-datadog
afcpcppDatadog :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileDatadogConnectorProfileProperties)
afcpcppDatadog = lens _appFlowConnectorProfileConnectorProfilePropertiesDatadog (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesDatadog = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-dynatrace
afcpcppDynatrace :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileDynatraceConnectorProfileProperties)
afcpcppDynatrace = lens _appFlowConnectorProfileConnectorProfilePropertiesDynatrace (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesDynatrace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-infornexus
afcpcppInforNexus :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileInforNexusConnectorProfileProperties)
afcpcppInforNexus = lens _appFlowConnectorProfileConnectorProfilePropertiesInforNexus (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesInforNexus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-marketo
afcpcppMarketo :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileMarketoConnectorProfileProperties)
afcpcppMarketo = lens _appFlowConnectorProfileConnectorProfilePropertiesMarketo (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesMarketo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-redshift
afcpcppRedshift :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileRedshiftConnectorProfileProperties)
afcpcppRedshift = lens _appFlowConnectorProfileConnectorProfilePropertiesRedshift (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesRedshift = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-salesforce
afcpcppSalesforce :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileSalesforceConnectorProfileProperties)
afcpcppSalesforce = lens _appFlowConnectorProfileConnectorProfilePropertiesSalesforce (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesSalesforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-servicenow
afcpcppServiceNow :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileServiceNowConnectorProfileProperties)
afcpcppServiceNow = lens _appFlowConnectorProfileConnectorProfilePropertiesServiceNow (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesServiceNow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-slack
afcpcppSlack :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileSlackConnectorProfileProperties)
afcpcppSlack = lens _appFlowConnectorProfileConnectorProfilePropertiesSlack (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesSlack = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-snowflake
afcpcppSnowflake :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileSnowflakeConnectorProfileProperties)
afcpcppSnowflake = lens _appFlowConnectorProfileConnectorProfilePropertiesSnowflake (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesSnowflake = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-veeva
afcpcppVeeva :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileVeevaConnectorProfileProperties)
afcpcppVeeva = lens _appFlowConnectorProfileConnectorProfilePropertiesVeeva (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesVeeva = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-zendesk
afcpcppZendesk :: Lens' AppFlowConnectorProfileConnectorProfileProperties (Maybe AppFlowConnectorProfileZendeskConnectorProfileProperties)
afcpcppZendesk = lens _appFlowConnectorProfileConnectorProfilePropertiesZendesk (\s a -> s { _appFlowConnectorProfileConnectorProfilePropertiesZendesk = a })
