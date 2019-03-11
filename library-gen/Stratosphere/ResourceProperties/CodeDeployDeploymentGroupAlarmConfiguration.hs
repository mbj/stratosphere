{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarmConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarm

-- | Full data type definition for
-- CodeDeployDeploymentGroupAlarmConfiguration. See
-- 'codeDeployDeploymentGroupAlarmConfiguration' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupAlarmConfiguration =
  CodeDeployDeploymentGroupAlarmConfiguration
  { _codeDeployDeploymentGroupAlarmConfigurationAlarms :: Maybe [CodeDeployDeploymentGroupAlarm]
  , _codeDeployDeploymentGroupAlarmConfigurationEnabled :: Maybe (Val Bool)
  , _codeDeployDeploymentGroupAlarmConfigurationIgnorePollAlarmFailure :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupAlarmConfiguration where
  toJSON CodeDeployDeploymentGroupAlarmConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Alarms",) . toJSON) _codeDeployDeploymentGroupAlarmConfigurationAlarms
    , fmap (("Enabled",) . toJSON . fmap Bool') _codeDeployDeploymentGroupAlarmConfigurationEnabled
    , fmap (("IgnorePollAlarmFailure",) . toJSON . fmap Bool') _codeDeployDeploymentGroupAlarmConfigurationIgnorePollAlarmFailure
    ]

-- | Constructor for 'CodeDeployDeploymentGroupAlarmConfiguration' containing
-- required fields as arguments.
codeDeployDeploymentGroupAlarmConfiguration
  :: CodeDeployDeploymentGroupAlarmConfiguration
codeDeployDeploymentGroupAlarmConfiguration  =
  CodeDeployDeploymentGroupAlarmConfiguration
  { _codeDeployDeploymentGroupAlarmConfigurationAlarms = Nothing
  , _codeDeployDeploymentGroupAlarmConfigurationEnabled = Nothing
  , _codeDeployDeploymentGroupAlarmConfigurationIgnorePollAlarmFailure = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-alarms
cddgacAlarms :: Lens' CodeDeployDeploymentGroupAlarmConfiguration (Maybe [CodeDeployDeploymentGroupAlarm])
cddgacAlarms = lens _codeDeployDeploymentGroupAlarmConfigurationAlarms (\s a -> s { _codeDeployDeploymentGroupAlarmConfigurationAlarms = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-enabled
cddgacEnabled :: Lens' CodeDeployDeploymentGroupAlarmConfiguration (Maybe (Val Bool))
cddgacEnabled = lens _codeDeployDeploymentGroupAlarmConfigurationEnabled (\s a -> s { _codeDeployDeploymentGroupAlarmConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-ignorepollalarmfailure
cddgacIgnorePollAlarmFailure :: Lens' CodeDeployDeploymentGroupAlarmConfiguration (Maybe (Val Bool))
cddgacIgnorePollAlarmFailure = lens _codeDeployDeploymentGroupAlarmConfigurationIgnorePollAlarmFailure (\s a -> s { _codeDeployDeploymentGroupAlarmConfigurationIgnorePollAlarmFailure = a })
