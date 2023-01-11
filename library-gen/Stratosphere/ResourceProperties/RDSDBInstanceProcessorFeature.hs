
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html

module Stratosphere.ResourceProperties.RDSDBInstanceProcessorFeature where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBInstanceProcessorFeature. See
-- 'rdsdbInstanceProcessorFeature' for a more convenient constructor.
data RDSDBInstanceProcessorFeature =
  RDSDBInstanceProcessorFeature
  { _rDSDBInstanceProcessorFeatureName :: Maybe (Val Text)
  , _rDSDBInstanceProcessorFeatureValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBInstanceProcessorFeature where
  toJSON RDSDBInstanceProcessorFeature{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _rDSDBInstanceProcessorFeatureName
    , fmap (("Value",) . toJSON) _rDSDBInstanceProcessorFeatureValue
    ]

-- | Constructor for 'RDSDBInstanceProcessorFeature' containing required
-- fields as arguments.
rdsdbInstanceProcessorFeature
  :: RDSDBInstanceProcessorFeature
rdsdbInstanceProcessorFeature  =
  RDSDBInstanceProcessorFeature
  { _rDSDBInstanceProcessorFeatureName = Nothing
  , _rDSDBInstanceProcessorFeatureValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-name
rdsdbipfName :: Lens' RDSDBInstanceProcessorFeature (Maybe (Val Text))
rdsdbipfName = lens _rDSDBInstanceProcessorFeatureName (\s a -> s { _rDSDBInstanceProcessorFeatureName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-value
rdsdbipfValue :: Lens' RDSDBInstanceProcessorFeature (Maybe (Val Text))
rdsdbipfValue = lens _rDSDBInstanceProcessorFeatureValue (\s a -> s { _rDSDBInstanceProcessorFeatureValue = a })
