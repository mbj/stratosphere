{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html

module Stratosphere.ResourceProperties.GluePartitionPartitionInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GluePartitionStorageDescriptor

-- | Full data type definition for GluePartitionPartitionInput. See
-- 'gluePartitionPartitionInput' for a more convenient constructor.
data GluePartitionPartitionInput =
  GluePartitionPartitionInput
  { _gluePartitionPartitionInputParameters :: Maybe Object
  , _gluePartitionPartitionInputStorageDescriptor :: Maybe GluePartitionStorageDescriptor
  , _gluePartitionPartitionInputValues :: ValList Text
  } deriving (Show, Eq)

instance ToJSON GluePartitionPartitionInput where
  toJSON GluePartitionPartitionInput{..} =
    object $
    catMaybes
    [ fmap (("Parameters",) . toJSON) _gluePartitionPartitionInputParameters
    , fmap (("StorageDescriptor",) . toJSON) _gluePartitionPartitionInputStorageDescriptor
    , (Just . ("Values",) . toJSON) _gluePartitionPartitionInputValues
    ]

-- | Constructor for 'GluePartitionPartitionInput' containing required fields
-- as arguments.
gluePartitionPartitionInput
  :: ValList Text -- ^ 'gppiValues'
  -> GluePartitionPartitionInput
gluePartitionPartitionInput valuesarg =
  GluePartitionPartitionInput
  { _gluePartitionPartitionInputParameters = Nothing
  , _gluePartitionPartitionInputStorageDescriptor = Nothing
  , _gluePartitionPartitionInputValues = valuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-parameters
gppiParameters :: Lens' GluePartitionPartitionInput (Maybe Object)
gppiParameters = lens _gluePartitionPartitionInputParameters (\s a -> s { _gluePartitionPartitionInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-storagedescriptor
gppiStorageDescriptor :: Lens' GluePartitionPartitionInput (Maybe GluePartitionStorageDescriptor)
gppiStorageDescriptor = lens _gluePartitionPartitionInputStorageDescriptor (\s a -> s { _gluePartitionPartitionInputStorageDescriptor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-values
gppiValues :: Lens' GluePartitionPartitionInput (ValList Text)
gppiValues = lens _gluePartitionPartitionInputValues (\s a -> s { _gluePartitionPartitionInputValues = a })
