{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html

module Stratosphere.Resources.RDSDBProxy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSDBProxyAuthFormat
import Stratosphere.ResourceProperties.RDSDBProxyTagFormat

-- | Full data type definition for RDSDBProxy. See 'rdsdbProxy' for a more
-- convenient constructor.
data RDSDBProxy =
  RDSDBProxy
  { _rDSDBProxyAuth :: [RDSDBProxyAuthFormat]
  , _rDSDBProxyDBProxyName :: Val Text
  , _rDSDBProxyDebugLogging :: Maybe (Val Bool)
  , _rDSDBProxyEngineFamily :: Val Text
  , _rDSDBProxyIdleClientTimeout :: Maybe (Val Integer)
  , _rDSDBProxyRequireTLS :: Maybe (Val Bool)
  , _rDSDBProxyRoleArn :: Val Text
  , _rDSDBProxyTags :: Maybe [RDSDBProxyTagFormat]
  , _rDSDBProxyVpcSecurityGroupIds :: Maybe (ValList Text)
  , _rDSDBProxyVpcSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBProxy where
  toResourceProperties RDSDBProxy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBProxy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Auth",) . toJSON) _rDSDBProxyAuth
        , (Just . ("DBProxyName",) . toJSON) _rDSDBProxyDBProxyName
        , fmap (("DebugLogging",) . toJSON) _rDSDBProxyDebugLogging
        , (Just . ("EngineFamily",) . toJSON) _rDSDBProxyEngineFamily
        , fmap (("IdleClientTimeout",) . toJSON) _rDSDBProxyIdleClientTimeout
        , fmap (("RequireTLS",) . toJSON) _rDSDBProxyRequireTLS
        , (Just . ("RoleArn",) . toJSON) _rDSDBProxyRoleArn
        , fmap (("Tags",) . toJSON) _rDSDBProxyTags
        , fmap (("VpcSecurityGroupIds",) . toJSON) _rDSDBProxyVpcSecurityGroupIds
        , (Just . ("VpcSubnetIds",) . toJSON) _rDSDBProxyVpcSubnetIds
        ]
    }

-- | Constructor for 'RDSDBProxy' containing required fields as arguments.
rdsdbProxy
  :: [RDSDBProxyAuthFormat] -- ^ 'rdsdbpAuth'
  -> Val Text -- ^ 'rdsdbpDBProxyName'
  -> Val Text -- ^ 'rdsdbpEngineFamily'
  -> Val Text -- ^ 'rdsdbpRoleArn'
  -> ValList Text -- ^ 'rdsdbpVpcSubnetIds'
  -> RDSDBProxy
rdsdbProxy autharg dBProxyNamearg engineFamilyarg roleArnarg vpcSubnetIdsarg =
  RDSDBProxy
  { _rDSDBProxyAuth = autharg
  , _rDSDBProxyDBProxyName = dBProxyNamearg
  , _rDSDBProxyDebugLogging = Nothing
  , _rDSDBProxyEngineFamily = engineFamilyarg
  , _rDSDBProxyIdleClientTimeout = Nothing
  , _rDSDBProxyRequireTLS = Nothing
  , _rDSDBProxyRoleArn = roleArnarg
  , _rDSDBProxyTags = Nothing
  , _rDSDBProxyVpcSecurityGroupIds = Nothing
  , _rDSDBProxyVpcSubnetIds = vpcSubnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-auth
rdsdbpAuth :: Lens' RDSDBProxy [RDSDBProxyAuthFormat]
rdsdbpAuth = lens _rDSDBProxyAuth (\s a -> s { _rDSDBProxyAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-dbproxyname
rdsdbpDBProxyName :: Lens' RDSDBProxy (Val Text)
rdsdbpDBProxyName = lens _rDSDBProxyDBProxyName (\s a -> s { _rDSDBProxyDBProxyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-debuglogging
rdsdbpDebugLogging :: Lens' RDSDBProxy (Maybe (Val Bool))
rdsdbpDebugLogging = lens _rDSDBProxyDebugLogging (\s a -> s { _rDSDBProxyDebugLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-enginefamily
rdsdbpEngineFamily :: Lens' RDSDBProxy (Val Text)
rdsdbpEngineFamily = lens _rDSDBProxyEngineFamily (\s a -> s { _rDSDBProxyEngineFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-idleclienttimeout
rdsdbpIdleClientTimeout :: Lens' RDSDBProxy (Maybe (Val Integer))
rdsdbpIdleClientTimeout = lens _rDSDBProxyIdleClientTimeout (\s a -> s { _rDSDBProxyIdleClientTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-requiretls
rdsdbpRequireTLS :: Lens' RDSDBProxy (Maybe (Val Bool))
rdsdbpRequireTLS = lens _rDSDBProxyRequireTLS (\s a -> s { _rDSDBProxyRequireTLS = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-rolearn
rdsdbpRoleArn :: Lens' RDSDBProxy (Val Text)
rdsdbpRoleArn = lens _rDSDBProxyRoleArn (\s a -> s { _rDSDBProxyRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-tags
rdsdbpTags :: Lens' RDSDBProxy (Maybe [RDSDBProxyTagFormat])
rdsdbpTags = lens _rDSDBProxyTags (\s a -> s { _rDSDBProxyTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-vpcsecuritygroupids
rdsdbpVpcSecurityGroupIds :: Lens' RDSDBProxy (Maybe (ValList Text))
rdsdbpVpcSecurityGroupIds = lens _rDSDBProxyVpcSecurityGroupIds (\s a -> s { _rDSDBProxyVpcSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxy.html#cfn-rds-dbproxy-vpcsubnetids
rdsdbpVpcSubnetIds :: Lens' RDSDBProxy (ValList Text)
rdsdbpVpcSubnetIds = lens _rDSDBProxyVpcSubnetIds (\s a -> s { _rDSDBProxyVpcSubnetIds = a })
