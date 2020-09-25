{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html

module Stratosphere.ResourceProperties.AppFlowFlowConnectorOperator where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowConnectorOperator. See
-- 'appFlowFlowConnectorOperator' for a more convenient constructor.
data AppFlowFlowConnectorOperator =
  AppFlowFlowConnectorOperator
  { _appFlowFlowConnectorOperatorAmplitude :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorDatadog :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorDynatrace :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorGoogleAnalytics :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorInforNexus :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorMarketo :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorS3 :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorSalesforce :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorServiceNow :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorSingular :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorSlack :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorTrendmicro :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorVeeva :: Maybe (Val Text)
  , _appFlowFlowConnectorOperatorZendesk :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowConnectorOperator where
  toJSON AppFlowFlowConnectorOperator{..} =
    object $
    catMaybes
    [ fmap (("Amplitude",) . toJSON) _appFlowFlowConnectorOperatorAmplitude
    , fmap (("Datadog",) . toJSON) _appFlowFlowConnectorOperatorDatadog
    , fmap (("Dynatrace",) . toJSON) _appFlowFlowConnectorOperatorDynatrace
    , fmap (("GoogleAnalytics",) . toJSON) _appFlowFlowConnectorOperatorGoogleAnalytics
    , fmap (("InforNexus",) . toJSON) _appFlowFlowConnectorOperatorInforNexus
    , fmap (("Marketo",) . toJSON) _appFlowFlowConnectorOperatorMarketo
    , fmap (("S3",) . toJSON) _appFlowFlowConnectorOperatorS3
    , fmap (("Salesforce",) . toJSON) _appFlowFlowConnectorOperatorSalesforce
    , fmap (("ServiceNow",) . toJSON) _appFlowFlowConnectorOperatorServiceNow
    , fmap (("Singular",) . toJSON) _appFlowFlowConnectorOperatorSingular
    , fmap (("Slack",) . toJSON) _appFlowFlowConnectorOperatorSlack
    , fmap (("Trendmicro",) . toJSON) _appFlowFlowConnectorOperatorTrendmicro
    , fmap (("Veeva",) . toJSON) _appFlowFlowConnectorOperatorVeeva
    , fmap (("Zendesk",) . toJSON) _appFlowFlowConnectorOperatorZendesk
    ]

-- | Constructor for 'AppFlowFlowConnectorOperator' containing required fields
-- as arguments.
appFlowFlowConnectorOperator
  :: AppFlowFlowConnectorOperator
appFlowFlowConnectorOperator  =
  AppFlowFlowConnectorOperator
  { _appFlowFlowConnectorOperatorAmplitude = Nothing
  , _appFlowFlowConnectorOperatorDatadog = Nothing
  , _appFlowFlowConnectorOperatorDynatrace = Nothing
  , _appFlowFlowConnectorOperatorGoogleAnalytics = Nothing
  , _appFlowFlowConnectorOperatorInforNexus = Nothing
  , _appFlowFlowConnectorOperatorMarketo = Nothing
  , _appFlowFlowConnectorOperatorS3 = Nothing
  , _appFlowFlowConnectorOperatorSalesforce = Nothing
  , _appFlowFlowConnectorOperatorServiceNow = Nothing
  , _appFlowFlowConnectorOperatorSingular = Nothing
  , _appFlowFlowConnectorOperatorSlack = Nothing
  , _appFlowFlowConnectorOperatorTrendmicro = Nothing
  , _appFlowFlowConnectorOperatorVeeva = Nothing
  , _appFlowFlowConnectorOperatorZendesk = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-amplitude
affcoAmplitude :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoAmplitude = lens _appFlowFlowConnectorOperatorAmplitude (\s a -> s { _appFlowFlowConnectorOperatorAmplitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-datadog
affcoDatadog :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoDatadog = lens _appFlowFlowConnectorOperatorDatadog (\s a -> s { _appFlowFlowConnectorOperatorDatadog = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-dynatrace
affcoDynatrace :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoDynatrace = lens _appFlowFlowConnectorOperatorDynatrace (\s a -> s { _appFlowFlowConnectorOperatorDynatrace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-googleanalytics
affcoGoogleAnalytics :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoGoogleAnalytics = lens _appFlowFlowConnectorOperatorGoogleAnalytics (\s a -> s { _appFlowFlowConnectorOperatorGoogleAnalytics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-infornexus
affcoInforNexus :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoInforNexus = lens _appFlowFlowConnectorOperatorInforNexus (\s a -> s { _appFlowFlowConnectorOperatorInforNexus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-marketo
affcoMarketo :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoMarketo = lens _appFlowFlowConnectorOperatorMarketo (\s a -> s { _appFlowFlowConnectorOperatorMarketo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-s3
affcoS3 :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoS3 = lens _appFlowFlowConnectorOperatorS3 (\s a -> s { _appFlowFlowConnectorOperatorS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-salesforce
affcoSalesforce :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoSalesforce = lens _appFlowFlowConnectorOperatorSalesforce (\s a -> s { _appFlowFlowConnectorOperatorSalesforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-servicenow
affcoServiceNow :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoServiceNow = lens _appFlowFlowConnectorOperatorServiceNow (\s a -> s { _appFlowFlowConnectorOperatorServiceNow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-singular
affcoSingular :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoSingular = lens _appFlowFlowConnectorOperatorSingular (\s a -> s { _appFlowFlowConnectorOperatorSingular = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-slack
affcoSlack :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoSlack = lens _appFlowFlowConnectorOperatorSlack (\s a -> s { _appFlowFlowConnectorOperatorSlack = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-trendmicro
affcoTrendmicro :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoTrendmicro = lens _appFlowFlowConnectorOperatorTrendmicro (\s a -> s { _appFlowFlowConnectorOperatorTrendmicro = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-veeva
affcoVeeva :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoVeeva = lens _appFlowFlowConnectorOperatorVeeva (\s a -> s { _appFlowFlowConnectorOperatorVeeva = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-zendesk
affcoZendesk :: Lens' AppFlowFlowConnectorOperator (Maybe (Val Text))
affcoZendesk = lens _appFlowFlowConnectorOperatorZendesk (\s a -> s { _appFlowFlowConnectorOperatorZendesk = a })
