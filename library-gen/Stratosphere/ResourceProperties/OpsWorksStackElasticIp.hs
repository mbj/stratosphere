
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html

module Stratosphere.ResourceProperties.OpsWorksStackElasticIp where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksStackElasticIp. See
-- 'opsWorksStackElasticIp' for a more convenient constructor.
data OpsWorksStackElasticIp =
  OpsWorksStackElasticIp
  { _opsWorksStackElasticIpIp :: Val Text
  , _opsWorksStackElasticIpName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksStackElasticIp where
  toJSON OpsWorksStackElasticIp{..} =
    object $
    catMaybes
    [ (Just . ("Ip",) . toJSON) _opsWorksStackElasticIpIp
    , fmap (("Name",) . toJSON) _opsWorksStackElasticIpName
    ]

-- | Constructor for 'OpsWorksStackElasticIp' containing required fields as
-- arguments.
opsWorksStackElasticIp
  :: Val Text -- ^ 'owseiIp'
  -> OpsWorksStackElasticIp
opsWorksStackElasticIp iparg =
  OpsWorksStackElasticIp
  { _opsWorksStackElasticIpIp = iparg
  , _opsWorksStackElasticIpName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-ip
owseiIp :: Lens' OpsWorksStackElasticIp (Val Text)
owseiIp = lens _opsWorksStackElasticIpIp (\s a -> s { _opsWorksStackElasticIpIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-name
owseiName :: Lens' OpsWorksStackElasticIp (Maybe (Val Text))
owseiName = lens _opsWorksStackElasticIpName (\s a -> s { _opsWorksStackElasticIpName = a })
