{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html

module Stratosphere.ResourceProperties.BatchJobDefinitionNodeRangeProperty where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionContainerProperties

-- | Full data type definition for BatchJobDefinitionNodeRangeProperty. See
-- 'batchJobDefinitionNodeRangeProperty' for a more convenient constructor.
data BatchJobDefinitionNodeRangeProperty =
  BatchJobDefinitionNodeRangeProperty
  { _batchJobDefinitionNodeRangePropertyContainer :: Maybe BatchJobDefinitionContainerProperties
  , _batchJobDefinitionNodeRangePropertyTargetNodes :: Val Text
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionNodeRangeProperty where
  toJSON BatchJobDefinitionNodeRangeProperty{..} =
    object $
    catMaybes
    [ fmap (("Container",) . toJSON) _batchJobDefinitionNodeRangePropertyContainer
    , (Just . ("TargetNodes",) . toJSON) _batchJobDefinitionNodeRangePropertyTargetNodes
    ]

-- | Constructor for 'BatchJobDefinitionNodeRangeProperty' containing required
-- fields as arguments.
batchJobDefinitionNodeRangeProperty
  :: Val Text -- ^ 'bjdnrpTargetNodes'
  -> BatchJobDefinitionNodeRangeProperty
batchJobDefinitionNodeRangeProperty targetNodesarg =
  BatchJobDefinitionNodeRangeProperty
  { _batchJobDefinitionNodeRangePropertyContainer = Nothing
  , _batchJobDefinitionNodeRangePropertyTargetNodes = targetNodesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-container
bjdnrpContainer :: Lens' BatchJobDefinitionNodeRangeProperty (Maybe BatchJobDefinitionContainerProperties)
bjdnrpContainer = lens _batchJobDefinitionNodeRangePropertyContainer (\s a -> s { _batchJobDefinitionNodeRangePropertyContainer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-targetnodes
bjdnrpTargetNodes :: Lens' BatchJobDefinitionNodeRangeProperty (Val Text)
bjdnrpTargetNodes = lens _batchJobDefinitionNodeRangePropertyTargetNodes (\s a -> s { _batchJobDefinitionNodeRangePropertyTargetNodes = a })
