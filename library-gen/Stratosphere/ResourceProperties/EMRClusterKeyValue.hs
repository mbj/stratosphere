
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html

module Stratosphere.ResourceProperties.EMRClusterKeyValue where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterKeyValue. See
-- 'emrClusterKeyValue' for a more convenient constructor.
data EMRClusterKeyValue =
  EMRClusterKeyValue
  { _eMRClusterKeyValueKey :: Maybe (Val Text)
  , _eMRClusterKeyValueValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRClusterKeyValue where
  toJSON EMRClusterKeyValue{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _eMRClusterKeyValueKey
    , fmap (("Value",) . toJSON) _eMRClusterKeyValueValue
    ]

-- | Constructor for 'EMRClusterKeyValue' containing required fields as
-- arguments.
emrClusterKeyValue
  :: EMRClusterKeyValue
emrClusterKeyValue  =
  EMRClusterKeyValue
  { _eMRClusterKeyValueKey = Nothing
  , _eMRClusterKeyValueValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html#cfn-elasticmapreduce-cluster-keyvalue-key
emrckvKey :: Lens' EMRClusterKeyValue (Maybe (Val Text))
emrckvKey = lens _eMRClusterKeyValueKey (\s a -> s { _eMRClusterKeyValueKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html#cfn-elasticmapreduce-cluster-keyvalue-value
emrckvValue :: Lens' EMRClusterKeyValue (Maybe (Val Text))
emrckvValue = lens _eMRClusterKeyValueValue (\s a -> s { _eMRClusterKeyValueValue = a })
