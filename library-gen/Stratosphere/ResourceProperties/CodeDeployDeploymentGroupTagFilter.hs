{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTagFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupTagFilter. See
-- 'codeDeployDeploymentGroupTagFilter' for a more convenient constructor.
data CodeDeployDeploymentGroupTagFilter =
  CodeDeployDeploymentGroupTagFilter
  { _codeDeployDeploymentGroupTagFilterKey :: Maybe (Val Text)
  , _codeDeployDeploymentGroupTagFilterType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupTagFilterValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupTagFilter where
  toJSON CodeDeployDeploymentGroupTagFilter{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _codeDeployDeploymentGroupTagFilterKey
    , fmap (("Type",) . toJSON) _codeDeployDeploymentGroupTagFilterType
    , fmap (("Value",) . toJSON) _codeDeployDeploymentGroupTagFilterValue
    ]

instance FromJSON CodeDeployDeploymentGroupTagFilter where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupTagFilter <$>
      (obj .:? "Key") <*>
      (obj .:? "Type") <*>
      (obj .:? "Value")
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupTagFilter' containing required
-- fields as arguments.
codeDeployDeploymentGroupTagFilter
  :: CodeDeployDeploymentGroupTagFilter
codeDeployDeploymentGroupTagFilter  =
  CodeDeployDeploymentGroupTagFilter
  { _codeDeployDeploymentGroupTagFilterKey = Nothing
  , _codeDeployDeploymentGroupTagFilterType = Nothing
  , _codeDeployDeploymentGroupTagFilterValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-key
cddgtfKey :: Lens' CodeDeployDeploymentGroupTagFilter (Maybe (Val Text))
cddgtfKey = lens _codeDeployDeploymentGroupTagFilterKey (\s a -> s { _codeDeployDeploymentGroupTagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-type
cddgtfType :: Lens' CodeDeployDeploymentGroupTagFilter (Maybe (Val Text))
cddgtfType = lens _codeDeployDeploymentGroupTagFilterType (\s a -> s { _codeDeployDeploymentGroupTagFilterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters.html#cfn-properties-codedeploy-deploymentgroup-onpremisesinstancetagfilters-value
cddgtfValue :: Lens' CodeDeployDeploymentGroupTagFilter (Maybe (Val Text))
cddgtfValue = lens _codeDeployDeploymentGroupTagFilterValue (\s a -> s { _codeDeployDeploymentGroupTagFilterValue = a })
