{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html

module Stratosphere.ResourceProperties.BatchJobDefinitionNodeProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionNodeRangeProperty

-- | Full data type definition for BatchJobDefinitionNodeProperties. See
-- 'batchJobDefinitionNodeProperties' for a more convenient constructor.
data BatchJobDefinitionNodeProperties =
  BatchJobDefinitionNodeProperties
  { _batchJobDefinitionNodePropertiesMainNode :: Val Integer
  , _batchJobDefinitionNodePropertiesNodeRangeProperties :: [BatchJobDefinitionNodeRangeProperty]
  , _batchJobDefinitionNodePropertiesNumNodes :: Val Integer
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionNodeProperties where
  toJSON BatchJobDefinitionNodeProperties{..} =
    object $
    catMaybes
    [ (Just . ("MainNode",) . toJSON . fmap Integer') _batchJobDefinitionNodePropertiesMainNode
    , (Just . ("NodeRangeProperties",) . toJSON) _batchJobDefinitionNodePropertiesNodeRangeProperties
    , (Just . ("NumNodes",) . toJSON . fmap Integer') _batchJobDefinitionNodePropertiesNumNodes
    ]

-- | Constructor for 'BatchJobDefinitionNodeProperties' containing required
-- fields as arguments.
batchJobDefinitionNodeProperties
  :: Val Integer -- ^ 'bjdnpMainNode'
  -> [BatchJobDefinitionNodeRangeProperty] -- ^ 'bjdnpNodeRangeProperties'
  -> Val Integer -- ^ 'bjdnpNumNodes'
  -> BatchJobDefinitionNodeProperties
batchJobDefinitionNodeProperties mainNodearg nodeRangePropertiesarg numNodesarg =
  BatchJobDefinitionNodeProperties
  { _batchJobDefinitionNodePropertiesMainNode = mainNodearg
  , _batchJobDefinitionNodePropertiesNodeRangeProperties = nodeRangePropertiesarg
  , _batchJobDefinitionNodePropertiesNumNodes = numNodesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-mainnode
bjdnpMainNode :: Lens' BatchJobDefinitionNodeProperties (Val Integer)
bjdnpMainNode = lens _batchJobDefinitionNodePropertiesMainNode (\s a -> s { _batchJobDefinitionNodePropertiesMainNode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-noderangeproperties
bjdnpNodeRangeProperties :: Lens' BatchJobDefinitionNodeProperties [BatchJobDefinitionNodeRangeProperty]
bjdnpNodeRangeProperties = lens _batchJobDefinitionNodePropertiesNodeRangeProperties (\s a -> s { _batchJobDefinitionNodePropertiesNodeRangeProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-numnodes
bjdnpNumNodes :: Lens' BatchJobDefinitionNodeProperties (Val Integer)
bjdnpNumNodes = lens _batchJobDefinitionNodePropertiesNumNodes (\s a -> s { _batchJobDefinitionNodePropertiesNumNodes = a })
