{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | CodeDeployDeploymentGroupOnPremisesInstanceTagFilter. See
-- | 'codeDeployDeploymentGroupOnPremisesInstanceTagFilter' for a more
-- | convenient constructor.
data CodeDeployDeploymentGroupOnPremisesInstanceTagFilter =
  CodeDeployDeploymentGroupOnPremisesInstanceTagFilter
  { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey :: Maybe (Val Text)
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentGroupOnPremisesInstanceTagFilter'
-- | containing required fields as arguments.
codeDeployDeploymentGroupOnPremisesInstanceTagFilter
  :: CodeDeployDeploymentGroupOnPremisesInstanceTagFilter
codeDeployDeploymentGroupOnPremisesInstanceTagFilter  =
  CodeDeployDeploymentGroupOnPremisesInstanceTagFilter
  { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey = Nothing
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType = Nothing
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-key
cddgopitfKey :: Lens' CodeDeployDeploymentGroupOnPremisesInstanceTagFilter (Maybe (Val Text))
cddgopitfKey = lens _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey (\s a -> s { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-type
cddgopitfType :: Lens' CodeDeployDeploymentGroupOnPremisesInstanceTagFilter (Maybe (Val Text))
cddgopitfType = lens _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType (\s a -> s { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-value
cddgopitfValue :: Lens' CodeDeployDeploymentGroupOnPremisesInstanceTagFilter (Maybe (Val Text))
cddgopitfValue = lens _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue (\s a -> s { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue = a })
