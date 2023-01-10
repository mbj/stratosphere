
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupEC2TagFilter. See
-- 'codeDeployDeploymentGroupEC2TagFilter' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupEC2TagFilter =
  CodeDeployDeploymentGroupEC2TagFilter
  { _codeDeployDeploymentGroupEC2TagFilterKey :: Maybe (Val Text)
  , _codeDeployDeploymentGroupEC2TagFilterType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupEC2TagFilterValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupEC2TagFilter where
  toJSON CodeDeployDeploymentGroupEC2TagFilter{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _codeDeployDeploymentGroupEC2TagFilterKey
    , fmap (("Type",) . toJSON) _codeDeployDeploymentGroupEC2TagFilterType
    , fmap (("Value",) . toJSON) _codeDeployDeploymentGroupEC2TagFilterValue
    ]

-- | Constructor for 'CodeDeployDeploymentGroupEC2TagFilter' containing
-- required fields as arguments.
codeDeployDeploymentGroupEC2TagFilter
  :: CodeDeployDeploymentGroupEC2TagFilter
codeDeployDeploymentGroupEC2TagFilter  =
  CodeDeployDeploymentGroupEC2TagFilter
  { _codeDeployDeploymentGroupEC2TagFilterKey = Nothing
  , _codeDeployDeploymentGroupEC2TagFilterType = Nothing
  , _codeDeployDeploymentGroupEC2TagFilterValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-key
cddgectfKey :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfKey = lens _codeDeployDeploymentGroupEC2TagFilterKey (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-type
cddgectfType :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfType = lens _codeDeployDeploymentGroupEC2TagFilterType (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-value
cddgectfValue :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfValue = lens _codeDeployDeploymentGroupEC2TagFilterValue (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterValue = a })
