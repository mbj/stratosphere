
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html

module Stratosphere.ResourceProperties.RDSDBInstanceDBInstanceRole where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBInstanceDBInstanceRole. See
-- 'rdsdbInstanceDBInstanceRole' for a more convenient constructor.
data RDSDBInstanceDBInstanceRole =
  RDSDBInstanceDBInstanceRole
  { _rDSDBInstanceDBInstanceRoleFeatureName :: Val Text
  , _rDSDBInstanceDBInstanceRoleRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON RDSDBInstanceDBInstanceRole where
  toJSON RDSDBInstanceDBInstanceRole{..} =
    object $
    catMaybes
    [ (Just . ("FeatureName",) . toJSON) _rDSDBInstanceDBInstanceRoleFeatureName
    , (Just . ("RoleArn",) . toJSON) _rDSDBInstanceDBInstanceRoleRoleArn
    ]

-- | Constructor for 'RDSDBInstanceDBInstanceRole' containing required fields
-- as arguments.
rdsdbInstanceDBInstanceRole
  :: Val Text -- ^ 'rdsdbidbirFeatureName'
  -> Val Text -- ^ 'rdsdbidbirRoleArn'
  -> RDSDBInstanceDBInstanceRole
rdsdbInstanceDBInstanceRole featureNamearg roleArnarg =
  RDSDBInstanceDBInstanceRole
  { _rDSDBInstanceDBInstanceRoleFeatureName = featureNamearg
  , _rDSDBInstanceDBInstanceRoleRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-featurename
rdsdbidbirFeatureName :: Lens' RDSDBInstanceDBInstanceRole (Val Text)
rdsdbidbirFeatureName = lens _rDSDBInstanceDBInstanceRoleFeatureName (\s a -> s { _rDSDBInstanceDBInstanceRoleFeatureName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-rolearn
rdsdbidbirRoleArn :: Lens' RDSDBInstanceDBInstanceRole (Val Text)
rdsdbidbirRoleArn = lens _rDSDBInstanceDBInstanceRoleRoleArn (\s a -> s { _rDSDBInstanceDBInstanceRoleRoleArn = a })
