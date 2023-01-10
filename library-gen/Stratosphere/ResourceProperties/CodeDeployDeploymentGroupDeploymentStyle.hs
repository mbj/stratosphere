
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeploymentStyle where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupDeploymentStyle.
-- See 'codeDeployDeploymentGroupDeploymentStyle' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupDeploymentStyle =
  CodeDeployDeploymentGroupDeploymentStyle
  { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentStyleDeploymentType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupDeploymentStyle where
  toJSON CodeDeployDeploymentGroupDeploymentStyle{..} =
    object $
    catMaybes
    [ fmap (("DeploymentOption",) . toJSON) _codeDeployDeploymentGroupDeploymentStyleDeploymentOption
    , fmap (("DeploymentType",) . toJSON) _codeDeployDeploymentGroupDeploymentStyleDeploymentType
    ]

-- | Constructor for 'CodeDeployDeploymentGroupDeploymentStyle' containing
-- required fields as arguments.
codeDeployDeploymentGroupDeploymentStyle
  :: CodeDeployDeploymentGroupDeploymentStyle
codeDeployDeploymentGroupDeploymentStyle  =
  CodeDeployDeploymentGroupDeploymentStyle
  { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption = Nothing
  , _codeDeployDeploymentGroupDeploymentStyleDeploymentType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymentoption
cddgdsDeploymentOption :: Lens' CodeDeployDeploymentGroupDeploymentStyle (Maybe (Val Text))
cddgdsDeploymentOption = lens _codeDeployDeploymentGroupDeploymentStyleDeploymentOption (\s a -> s { _codeDeployDeploymentGroupDeploymentStyleDeploymentOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymenttype
cddgdsDeploymentType :: Lens' CodeDeployDeploymentGroupDeploymentStyle (Maybe (Val Text))
cddgdsDeploymentType = lens _codeDeployDeploymentGroupDeploymentStyleDeploymentType (\s a -> s { _codeDeployDeploymentGroupDeploymentStyleDeploymentType = a })
