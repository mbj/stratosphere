{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarm where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentGroupAlarm. See
-- 'codeDeployDeploymentGroupAlarm' for a more convenient constructor.
data CodeDeployDeploymentGroupAlarm =
  CodeDeployDeploymentGroupAlarm
  { _codeDeployDeploymentGroupAlarmName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupAlarm where
  toJSON CodeDeployDeploymentGroupAlarm{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _codeDeployDeploymentGroupAlarmName
    ]

instance FromJSON CodeDeployDeploymentGroupAlarm where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupAlarm <$>
      obj .:? "Name"
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupAlarm' containing required
-- fields as arguments.
codeDeployDeploymentGroupAlarm
  :: CodeDeployDeploymentGroupAlarm
codeDeployDeploymentGroupAlarm  =
  CodeDeployDeploymentGroupAlarm
  { _codeDeployDeploymentGroupAlarmName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html#cfn-codedeploy-deploymentgroup-alarm-name
cddgaName :: Lens' CodeDeployDeploymentGroupAlarm (Maybe (Val Text))
cddgaName = lens _codeDeployDeploymentGroupAlarmName (\s a -> s { _codeDeployDeploymentGroupAlarmName = a })
