
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTriggerConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupTriggerConfig. See
-- 'codeDeployDeploymentGroupTriggerConfig' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupTriggerConfig =
  CodeDeployDeploymentGroupTriggerConfig
  { _codeDeployDeploymentGroupTriggerConfigTriggerEvents :: Maybe (ValList Text)
  , _codeDeployDeploymentGroupTriggerConfigTriggerName :: Maybe (Val Text)
  , _codeDeployDeploymentGroupTriggerConfigTriggerTargetArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupTriggerConfig where
  toJSON CodeDeployDeploymentGroupTriggerConfig{..} =
    object $
    catMaybes
    [ fmap (("TriggerEvents",) . toJSON) _codeDeployDeploymentGroupTriggerConfigTriggerEvents
    , fmap (("TriggerName",) . toJSON) _codeDeployDeploymentGroupTriggerConfigTriggerName
    , fmap (("TriggerTargetArn",) . toJSON) _codeDeployDeploymentGroupTriggerConfigTriggerTargetArn
    ]

-- | Constructor for 'CodeDeployDeploymentGroupTriggerConfig' containing
-- required fields as arguments.
codeDeployDeploymentGroupTriggerConfig
  :: CodeDeployDeploymentGroupTriggerConfig
codeDeployDeploymentGroupTriggerConfig  =
  CodeDeployDeploymentGroupTriggerConfig
  { _codeDeployDeploymentGroupTriggerConfigTriggerEvents = Nothing
  , _codeDeployDeploymentGroupTriggerConfigTriggerName = Nothing
  , _codeDeployDeploymentGroupTriggerConfigTriggerTargetArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggerevents
cddgtcTriggerEvents :: Lens' CodeDeployDeploymentGroupTriggerConfig (Maybe (ValList Text))
cddgtcTriggerEvents = lens _codeDeployDeploymentGroupTriggerConfigTriggerEvents (\s a -> s { _codeDeployDeploymentGroupTriggerConfigTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggername
cddgtcTriggerName :: Lens' CodeDeployDeploymentGroupTriggerConfig (Maybe (Val Text))
cddgtcTriggerName = lens _codeDeployDeploymentGroupTriggerConfigTriggerName (\s a -> s { _codeDeployDeploymentGroupTriggerConfigTriggerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggertargetarn
cddgtcTriggerTargetArn :: Lens' CodeDeployDeploymentGroupTriggerConfig (Maybe (Val Text))
cddgtcTriggerTargetArn = lens _codeDeployDeploymentGroupTriggerConfigTriggerTargetArn (\s a -> s { _codeDeployDeploymentGroupTriggerConfigTriggerTargetArn = a })
