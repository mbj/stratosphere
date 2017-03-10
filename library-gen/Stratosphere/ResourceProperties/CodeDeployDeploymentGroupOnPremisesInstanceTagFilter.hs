{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- CodeDeployDeploymentGroupOnPremisesInstanceTagFilter. See
-- 'codeDeployDeploymentGroupOnPremisesInstanceTagFilter' for a more
-- convenient constructor.
data CodeDeployDeploymentGroupOnPremisesInstanceTagFilter =
  CodeDeployDeploymentGroupOnPremisesInstanceTagFilter
  { _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey :: Maybe (Val Text)
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where
  toJSON CodeDeployDeploymentGroupOnPremisesInstanceTagFilter{..} =
    object $
    catMaybes
    [ ("Key" .=) <$> _codeDeployDeploymentGroupOnPremisesInstanceTagFilterKey
    , ("Type" .=) <$> _codeDeployDeploymentGroupOnPremisesInstanceTagFilterType
    , ("Value" .=) <$> _codeDeployDeploymentGroupOnPremisesInstanceTagFilterValue
    ]

instance FromJSON CodeDeployDeploymentGroupOnPremisesInstanceTagFilter where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupOnPremisesInstanceTagFilter <$>
      obj .:? "Key" <*>
      obj .:? "Type" <*>
      obj .:? "Value"
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupOnPremisesInstanceTagFilter'
-- containing required fields as arguments.
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
