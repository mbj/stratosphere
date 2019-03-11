{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html

module Stratosphere.Resources.InspectorResourceGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for InspectorResourceGroup. See
-- 'inspectorResourceGroup' for a more convenient constructor.
data InspectorResourceGroup =
  InspectorResourceGroup
  { _inspectorResourceGroupResourceGroupTags :: [Tag]
  } deriving (Show, Eq)

instance ToJSON InspectorResourceGroup where
  toJSON InspectorResourceGroup{..} =
    object $
    catMaybes
    [ (Just . ("ResourceGroupTags",) . toJSON) _inspectorResourceGroupResourceGroupTags
    ]

-- | Constructor for 'InspectorResourceGroup' containing required fields as
-- arguments.
inspectorResourceGroup
  :: [Tag] -- ^ 'irgResourceGroupTags'
  -> InspectorResourceGroup
inspectorResourceGroup resourceGroupTagsarg =
  InspectorResourceGroup
  { _inspectorResourceGroupResourceGroupTags = resourceGroupTagsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html#cfn-inspector-resourcegroup-resourcegrouptags
irgResourceGroupTags :: Lens' InspectorResourceGroup [Tag]
irgResourceGroupTags = lens _inspectorResourceGroupResourceGroupTags (\s a -> s { _inspectorResourceGroupResourceGroupTags = a })
