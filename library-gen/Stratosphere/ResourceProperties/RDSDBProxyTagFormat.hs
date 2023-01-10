
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-tagformat.html

module Stratosphere.ResourceProperties.RDSDBProxyTagFormat where

import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBProxyTagFormat. See
-- 'rdsdbProxyTagFormat' for a more convenient constructor.
data RDSDBProxyTagFormat =
  RDSDBProxyTagFormat
  { _rDSDBProxyTagFormatKey :: Maybe (Val Text)
  , _rDSDBProxyTagFormatValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBProxyTagFormat where
  toJSON RDSDBProxyTagFormat{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _rDSDBProxyTagFormatKey
    , fmap (("Value",) . toJSON) _rDSDBProxyTagFormatValue
    ]

-- | Constructor for 'RDSDBProxyTagFormat' containing required fields as
-- arguments.
rdsdbProxyTagFormat
  :: RDSDBProxyTagFormat
rdsdbProxyTagFormat  =
  RDSDBProxyTagFormat
  { _rDSDBProxyTagFormatKey = Nothing
  , _rDSDBProxyTagFormatValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-tagformat.html#cfn-rds-dbproxy-tagformat-key
rdsdbptfKey :: Lens' RDSDBProxyTagFormat (Maybe (Val Text))
rdsdbptfKey = lens _rDSDBProxyTagFormatKey (\s a -> s { _rDSDBProxyTagFormatKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-tagformat.html#cfn-rds-dbproxy-tagformat-value
rdsdbptfValue :: Lens' RDSDBProxyTagFormat (Maybe (Val Text))
rdsdbptfValue = lens _rDSDBProxyTagFormatValue (\s a -> s { _rDSDBProxyTagFormatValue = a })
