
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarm where

import Prelude
import Stratosphere.ResourceImports


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
    [ fmap (("Name",) . toJSON) _codeDeployDeploymentGroupAlarmName
    ]

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
