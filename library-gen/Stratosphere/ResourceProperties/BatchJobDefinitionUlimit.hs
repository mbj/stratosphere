{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html

module Stratosphere.ResourceProperties.BatchJobDefinitionUlimit where

import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionUlimit. See
-- 'batchJobDefinitionUlimit' for a more convenient constructor.
data BatchJobDefinitionUlimit =
  BatchJobDefinitionUlimit
  { _batchJobDefinitionUlimitHardLimit :: Val Integer
  , _batchJobDefinitionUlimitName :: Val Text
  , _batchJobDefinitionUlimitSoftLimit :: Val Integer
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionUlimit where
  toJSON BatchJobDefinitionUlimit{..} =
    object $
    catMaybes
    [ (Just . ("HardLimit",) . toJSON . fmap Integer') _batchJobDefinitionUlimitHardLimit
    , (Just . ("Name",) . toJSON) _batchJobDefinitionUlimitName
    , (Just . ("SoftLimit",) . toJSON . fmap Integer') _batchJobDefinitionUlimitSoftLimit
    ]

-- | Constructor for 'BatchJobDefinitionUlimit' containing required fields as
-- arguments.
batchJobDefinitionUlimit
  :: Val Integer -- ^ 'bjduHardLimit'
  -> Val Text -- ^ 'bjduName'
  -> Val Integer -- ^ 'bjduSoftLimit'
  -> BatchJobDefinitionUlimit
batchJobDefinitionUlimit hardLimitarg namearg softLimitarg =
  BatchJobDefinitionUlimit
  { _batchJobDefinitionUlimitHardLimit = hardLimitarg
  , _batchJobDefinitionUlimitName = namearg
  , _batchJobDefinitionUlimitSoftLimit = softLimitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-hardlimit
bjduHardLimit :: Lens' BatchJobDefinitionUlimit (Val Integer)
bjduHardLimit = lens _batchJobDefinitionUlimitHardLimit (\s a -> s { _batchJobDefinitionUlimitHardLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-name
bjduName :: Lens' BatchJobDefinitionUlimit (Val Text)
bjduName = lens _batchJobDefinitionUlimitName (\s a -> s { _batchJobDefinitionUlimitName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-softlimit
bjduSoftLimit :: Lens' BatchJobDefinitionUlimit (Val Integer)
bjduSoftLimit = lens _batchJobDefinitionUlimitSoftLimit (\s a -> s { _batchJobDefinitionUlimitSoftLimit = a })
