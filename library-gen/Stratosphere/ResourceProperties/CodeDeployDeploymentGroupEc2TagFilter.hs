{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEc2TagFilter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentGroupEc2TagFilter. See
-- | 'codeDeployDeploymentGroupEc2TagFilter' for a more convenient
-- | constructor.
data CodeDeployDeploymentGroupEc2TagFilter =
  CodeDeployDeploymentGroupEc2TagFilter
  { _codeDeployDeploymentGroupEc2TagFilterKey :: Maybe (Val Text)
  , _codeDeployDeploymentGroupEc2TagFilterType :: Val Text
  , _codeDeployDeploymentGroupEc2TagFilterValue :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodeDeployDeploymentGroupEc2TagFilter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentGroupEc2TagFilter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentGroupEc2TagFilter' containing
-- | required fields as arguments.
codeDeployDeploymentGroupEc2TagFilter
  :: Val Text -- ^ 'cddgetfType'
  -> CodeDeployDeploymentGroupEc2TagFilter
codeDeployDeploymentGroupEc2TagFilter typearg =
  CodeDeployDeploymentGroupEc2TagFilter
  { _codeDeployDeploymentGroupEc2TagFilterKey = Nothing
  , _codeDeployDeploymentGroupEc2TagFilterType = typearg
  , _codeDeployDeploymentGroupEc2TagFilterValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-key
cddgetfKey :: Lens' CodeDeployDeploymentGroupEc2TagFilter (Maybe (Val Text))
cddgetfKey = lens _codeDeployDeploymentGroupEc2TagFilterKey (\s a -> s { _codeDeployDeploymentGroupEc2TagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-type
cddgetfType :: Lens' CodeDeployDeploymentGroupEc2TagFilter (Val Text)
cddgetfType = lens _codeDeployDeploymentGroupEc2TagFilterType (\s a -> s { _codeDeployDeploymentGroupEc2TagFilterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-value
cddgetfValue :: Lens' CodeDeployDeploymentGroupEc2TagFilter (Maybe (Val Text))
cddgetfValue = lens _codeDeployDeploymentGroupEc2TagFilterValue (\s a -> s { _codeDeployDeploymentGroupEc2TagFilterValue = a })
