
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagSet where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagSetListObject

-- | Full data type definition for CodeDeployDeploymentGroupEC2TagSet. See
-- 'codeDeployDeploymentGroupEC2TagSet' for a more convenient constructor.
data CodeDeployDeploymentGroupEC2TagSet =
  CodeDeployDeploymentGroupEC2TagSet
  { _codeDeployDeploymentGroupEC2TagSetEc2TagSetList :: Maybe [CodeDeployDeploymentGroupEC2TagSetListObject]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupEC2TagSet where
  toJSON CodeDeployDeploymentGroupEC2TagSet{..} =
    object $
    catMaybes
    [ fmap (("Ec2TagSetList",) . toJSON) _codeDeployDeploymentGroupEC2TagSetEc2TagSetList
    ]

-- | Constructor for 'CodeDeployDeploymentGroupEC2TagSet' containing required
-- fields as arguments.
codeDeployDeploymentGroupEC2TagSet
  :: CodeDeployDeploymentGroupEC2TagSet
codeDeployDeploymentGroupEC2TagSet  =
  CodeDeployDeploymentGroupEC2TagSet
  { _codeDeployDeploymentGroupEC2TagSetEc2TagSetList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html#cfn-codedeploy-deploymentgroup-ec2tagset-ec2tagsetlist
cddgectsEc2TagSetList :: Lens' CodeDeployDeploymentGroupEC2TagSet (Maybe [CodeDeployDeploymentGroupEC2TagSetListObject])
cddgectsEc2TagSetList = lens _codeDeployDeploymentGroupEC2TagSetEc2TagSetList (\s a -> s { _codeDeployDeploymentGroupEC2TagSetEc2TagSetList = a })
