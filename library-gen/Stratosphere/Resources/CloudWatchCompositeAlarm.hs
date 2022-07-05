{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html

module Stratosphere.Resources.CloudWatchCompositeAlarm where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudWatchCompositeAlarm. See
-- 'cloudWatchCompositeAlarm' for a more convenient constructor.
data CloudWatchCompositeAlarm =
  CloudWatchCompositeAlarm
  { _cloudWatchCompositeAlarmActionsEnabled :: Maybe (Val Bool)
  , _cloudWatchCompositeAlarmAlarmActions :: Maybe (ValList Text)
  , _cloudWatchCompositeAlarmAlarmDescription :: Maybe (Val Text)
  , _cloudWatchCompositeAlarmAlarmName :: Val Text
  , _cloudWatchCompositeAlarmAlarmRule :: Val Text
  , _cloudWatchCompositeAlarmInsufficientDataActions :: Maybe (ValList Text)
  , _cloudWatchCompositeAlarmOKActions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties CloudWatchCompositeAlarm where
  toResourceProperties CloudWatchCompositeAlarm{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudWatch::CompositeAlarm"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ActionsEnabled",) . toJSON) _cloudWatchCompositeAlarmActionsEnabled
        , fmap (("AlarmActions",) . toJSON) _cloudWatchCompositeAlarmAlarmActions
        , fmap (("AlarmDescription",) . toJSON) _cloudWatchCompositeAlarmAlarmDescription
        , (Just . ("AlarmName",) . toJSON) _cloudWatchCompositeAlarmAlarmName
        , (Just . ("AlarmRule",) . toJSON) _cloudWatchCompositeAlarmAlarmRule
        , fmap (("InsufficientDataActions",) . toJSON) _cloudWatchCompositeAlarmInsufficientDataActions
        , fmap (("OKActions",) . toJSON) _cloudWatchCompositeAlarmOKActions
        ]
    }

-- | Constructor for 'CloudWatchCompositeAlarm' containing required fields as
-- arguments.
cloudWatchCompositeAlarm
  :: Val Text -- ^ 'cwcaAlarmName'
  -> Val Text -- ^ 'cwcaAlarmRule'
  -> CloudWatchCompositeAlarm
cloudWatchCompositeAlarm alarmNamearg alarmRulearg =
  CloudWatchCompositeAlarm
  { _cloudWatchCompositeAlarmActionsEnabled = Nothing
  , _cloudWatchCompositeAlarmAlarmActions = Nothing
  , _cloudWatchCompositeAlarmAlarmDescription = Nothing
  , _cloudWatchCompositeAlarmAlarmName = alarmNamearg
  , _cloudWatchCompositeAlarmAlarmRule = alarmRulearg
  , _cloudWatchCompositeAlarmInsufficientDataActions = Nothing
  , _cloudWatchCompositeAlarmOKActions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-actionsenabled
cwcaActionsEnabled :: Lens' CloudWatchCompositeAlarm (Maybe (Val Bool))
cwcaActionsEnabled = lens _cloudWatchCompositeAlarmActionsEnabled (\s a -> s { _cloudWatchCompositeAlarmActionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-alarmactions
cwcaAlarmActions :: Lens' CloudWatchCompositeAlarm (Maybe (ValList Text))
cwcaAlarmActions = lens _cloudWatchCompositeAlarmAlarmActions (\s a -> s { _cloudWatchCompositeAlarmAlarmActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-alarmdescription
cwcaAlarmDescription :: Lens' CloudWatchCompositeAlarm (Maybe (Val Text))
cwcaAlarmDescription = lens _cloudWatchCompositeAlarmAlarmDescription (\s a -> s { _cloudWatchCompositeAlarmAlarmDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-alarmname
cwcaAlarmName :: Lens' CloudWatchCompositeAlarm (Val Text)
cwcaAlarmName = lens _cloudWatchCompositeAlarmAlarmName (\s a -> s { _cloudWatchCompositeAlarmAlarmName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-alarmrule
cwcaAlarmRule :: Lens' CloudWatchCompositeAlarm (Val Text)
cwcaAlarmRule = lens _cloudWatchCompositeAlarmAlarmRule (\s a -> s { _cloudWatchCompositeAlarmAlarmRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-insufficientdataactions
cwcaInsufficientDataActions :: Lens' CloudWatchCompositeAlarm (Maybe (ValList Text))
cwcaInsufficientDataActions = lens _cloudWatchCompositeAlarmInsufficientDataActions (\s a -> s { _cloudWatchCompositeAlarmInsufficientDataActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html#cfn-cloudwatch-compositealarm-okactions
cwcaOKActions :: Lens' CloudWatchCompositeAlarm (Maybe (ValList Text))
cwcaOKActions = lens _cloudWatchCompositeAlarmOKActions (\s a -> s { _cloudWatchCompositeAlarmOKActions = a })
