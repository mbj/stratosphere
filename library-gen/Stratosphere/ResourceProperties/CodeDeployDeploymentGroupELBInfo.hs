
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupELBInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupELBInfo. See
-- 'codeDeployDeploymentGroupELBInfo' for a more convenient constructor.
data CodeDeployDeploymentGroupELBInfo =
  CodeDeployDeploymentGroupELBInfo
  { _codeDeployDeploymentGroupELBInfoName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupELBInfo where
  toJSON CodeDeployDeploymentGroupELBInfo{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _codeDeployDeploymentGroupELBInfoName
    ]

-- | Constructor for 'CodeDeployDeploymentGroupELBInfo' containing required
-- fields as arguments.
codeDeployDeploymentGroupELBInfo
  :: CodeDeployDeploymentGroupELBInfo
codeDeployDeploymentGroupELBInfo  =
  CodeDeployDeploymentGroupELBInfo
  { _codeDeployDeploymentGroupELBInfoName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html#cfn-codedeploy-deploymentgroup-elbinfo-name
cddgelbiName :: Lens' CodeDeployDeploymentGroupELBInfo (Maybe (Val Text))
cddgelbiName = lens _codeDeployDeploymentGroupELBInfoName (\s a -> s { _codeDeployDeploymentGroupELBInfoName = a })
