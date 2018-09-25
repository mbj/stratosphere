{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagSetListObject where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagFilter

-- | Full data type definition for
-- CodeDeployDeploymentGroupEC2TagSetListObject. See
-- 'codeDeployDeploymentGroupEC2TagSetListObject' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupEC2TagSetListObject =
  CodeDeployDeploymentGroupEC2TagSetListObject
  { _codeDeployDeploymentGroupEC2TagSetListObjectEc2TagGroup :: Maybe [CodeDeployDeploymentGroupEC2TagFilter]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupEC2TagSetListObject where
  toJSON CodeDeployDeploymentGroupEC2TagSetListObject{..} =
    object $
    catMaybes
    [ fmap (("Ec2TagGroup",) . toJSON) _codeDeployDeploymentGroupEC2TagSetListObjectEc2TagGroup
    ]

instance FromJSON CodeDeployDeploymentGroupEC2TagSetListObject where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupEC2TagSetListObject <$>
      (obj .:? "Ec2TagGroup")
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupEC2TagSetListObject' containing
-- required fields as arguments.
codeDeployDeploymentGroupEC2TagSetListObject
  :: CodeDeployDeploymentGroupEC2TagSetListObject
codeDeployDeploymentGroupEC2TagSetListObject  =
  CodeDeployDeploymentGroupEC2TagSetListObject
  { _codeDeployDeploymentGroupEC2TagSetListObjectEc2TagGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html#cfn-codedeploy-deploymentgroup-ec2tagsetlistobject-ec2taggroup
cddgectsloEc2TagGroup :: Lens' CodeDeployDeploymentGroupEC2TagSetListObject (Maybe [CodeDeployDeploymentGroupEC2TagFilter])
cddgectsloEc2TagGroup = lens _codeDeployDeploymentGroupEC2TagSetListObjectEc2TagGroup (\s a -> s { _codeDeployDeploymentGroupEC2TagSetListObjectEc2TagGroup = a })
