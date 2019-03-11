{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesTagSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesTagSetListObject

-- | Full data type definition for CodeDeployDeploymentGroupOnPremisesTagSet.
-- See 'codeDeployDeploymentGroupOnPremisesTagSet' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupOnPremisesTagSet =
  CodeDeployDeploymentGroupOnPremisesTagSet
  { _codeDeployDeploymentGroupOnPremisesTagSetOnPremisesTagSetList :: Maybe [CodeDeployDeploymentGroupOnPremisesTagSetListObject]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupOnPremisesTagSet where
  toJSON CodeDeployDeploymentGroupOnPremisesTagSet{..} =
    object $
    catMaybes
    [ fmap (("OnPremisesTagSetList",) . toJSON) _codeDeployDeploymentGroupOnPremisesTagSetOnPremisesTagSetList
    ]

-- | Constructor for 'CodeDeployDeploymentGroupOnPremisesTagSet' containing
-- required fields as arguments.
codeDeployDeploymentGroupOnPremisesTagSet
  :: CodeDeployDeploymentGroupOnPremisesTagSet
codeDeployDeploymentGroupOnPremisesTagSet  =
  CodeDeployDeploymentGroupOnPremisesTagSet
  { _codeDeployDeploymentGroupOnPremisesTagSetOnPremisesTagSetList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html#cfn-codedeploy-deploymentgroup-onpremisestagset-onpremisestagsetlist
cddgoptsOnPremisesTagSetList :: Lens' CodeDeployDeploymentGroupOnPremisesTagSet (Maybe [CodeDeployDeploymentGroupOnPremisesTagSetListObject])
cddgoptsOnPremisesTagSetList = lens _codeDeployDeploymentGroupOnPremisesTagSetOnPremisesTagSetList (\s a -> s { _codeDeployDeploymentGroupOnPremisesTagSetOnPremisesTagSetList = a })
