{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagFilter where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("Key" .=) <$> _codeDeployDeploymentGroupEC2TagFilterKey
    , ("Type" .=) <$> _codeDeployDeploymentGroupEC2TagFilterType
    , ("Value" .=) <$> _codeDeployDeploymentGroupEC2TagFilterValue
    ]

instance FromJSON CodeDeployDeploymentGroupEC2TagFilter where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupEC2TagFilter <$>
      obj .:? "Key" <*>
      obj .:? "Type" <*>
      obj .:? "Value"
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-key
cddgectfKey :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfKey = lens _codeDeployDeploymentGroupEC2TagFilterKey (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-type
cddgectfType :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfType = lens _codeDeployDeploymentGroupEC2TagFilterType (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilters.html#cfn-properties-codedeploy-deploymentgroup-ec2tagfilters-value
cddgectfValue :: Lens' CodeDeployDeploymentGroupEC2TagFilter (Maybe (Val Text))
cddgectfValue = lens _codeDeployDeploymentGroupEC2TagFilterValue (\s a -> s { _codeDeployDeploymentGroupEC2TagFilterValue = a })
