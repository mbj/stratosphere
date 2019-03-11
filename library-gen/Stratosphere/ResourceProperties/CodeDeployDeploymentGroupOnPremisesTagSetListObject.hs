{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesTagSetListObject where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTagFilter

-- | Full data type definition for
-- CodeDeployDeploymentGroupOnPremisesTagSetListObject. See
-- 'codeDeployDeploymentGroupOnPremisesTagSetListObject' for a more
-- convenient constructor.
data CodeDeployDeploymentGroupOnPremisesTagSetListObject =
  CodeDeployDeploymentGroupOnPremisesTagSetListObject
  { _codeDeployDeploymentGroupOnPremisesTagSetListObjectOnPremisesTagGroup :: Maybe [CodeDeployDeploymentGroupTagFilter]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupOnPremisesTagSetListObject where
  toJSON CodeDeployDeploymentGroupOnPremisesTagSetListObject{..} =
    object $
    catMaybes
    [ fmap (("OnPremisesTagGroup",) . toJSON) _codeDeployDeploymentGroupOnPremisesTagSetListObjectOnPremisesTagGroup
    ]

-- | Constructor for 'CodeDeployDeploymentGroupOnPremisesTagSetListObject'
-- containing required fields as arguments.
codeDeployDeploymentGroupOnPremisesTagSetListObject
  :: CodeDeployDeploymentGroupOnPremisesTagSetListObject
codeDeployDeploymentGroupOnPremisesTagSetListObject  =
  CodeDeployDeploymentGroupOnPremisesTagSetListObject
  { _codeDeployDeploymentGroupOnPremisesTagSetListObjectOnPremisesTagGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html#cfn-codedeploy-deploymentgroup-onpremisestagsetlistobject-onpremisestaggroup
cddgoptsloOnPremisesTagGroup :: Lens' CodeDeployDeploymentGroupOnPremisesTagSetListObject (Maybe [CodeDeployDeploymentGroupTagFilter])
cddgoptsloOnPremisesTagGroup = lens _codeDeployDeploymentGroupOnPremisesTagSetListObjectOnPremisesTagGroup (\s a -> s { _codeDeployDeploymentGroupOnPremisesTagSetListObjectOnPremisesTagGroup = a })
