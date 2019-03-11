{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html

module Stratosphere.Resources.GlueDevEndpoint where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueDevEndpoint. See 'glueDevEndpoint' for
-- a more convenient constructor.
data GlueDevEndpoint =
  GlueDevEndpoint
  { _glueDevEndpointEndpointName :: Maybe (Val Text)
  , _glueDevEndpointExtraJarsS3Path :: Maybe (Val Text)
  , _glueDevEndpointExtraPythonLibsS3Path :: Maybe (Val Text)
  , _glueDevEndpointNumberOfNodes :: Maybe (Val Integer)
  , _glueDevEndpointPublicKey :: Val Text
  , _glueDevEndpointRoleArn :: Val Text
  , _glueDevEndpointSecurityGroupIds :: Maybe (ValList Text)
  , _glueDevEndpointSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueDevEndpoint where
  toJSON GlueDevEndpoint{..} =
    object $
    catMaybes
    [ fmap (("EndpointName",) . toJSON) _glueDevEndpointEndpointName
    , fmap (("ExtraJarsS3Path",) . toJSON) _glueDevEndpointExtraJarsS3Path
    , fmap (("ExtraPythonLibsS3Path",) . toJSON) _glueDevEndpointExtraPythonLibsS3Path
    , fmap (("NumberOfNodes",) . toJSON . fmap Integer') _glueDevEndpointNumberOfNodes
    , (Just . ("PublicKey",) . toJSON) _glueDevEndpointPublicKey
    , (Just . ("RoleArn",) . toJSON) _glueDevEndpointRoleArn
    , fmap (("SecurityGroupIds",) . toJSON) _glueDevEndpointSecurityGroupIds
    , fmap (("SubnetId",) . toJSON) _glueDevEndpointSubnetId
    ]

-- | Constructor for 'GlueDevEndpoint' containing required fields as
-- arguments.
glueDevEndpoint
  :: Val Text -- ^ 'gdePublicKey'
  -> Val Text -- ^ 'gdeRoleArn'
  -> GlueDevEndpoint
glueDevEndpoint publicKeyarg roleArnarg =
  GlueDevEndpoint
  { _glueDevEndpointEndpointName = Nothing
  , _glueDevEndpointExtraJarsS3Path = Nothing
  , _glueDevEndpointExtraPythonLibsS3Path = Nothing
  , _glueDevEndpointNumberOfNodes = Nothing
  , _glueDevEndpointPublicKey = publicKeyarg
  , _glueDevEndpointRoleArn = roleArnarg
  , _glueDevEndpointSecurityGroupIds = Nothing
  , _glueDevEndpointSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-endpointname
gdeEndpointName :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeEndpointName = lens _glueDevEndpointEndpointName (\s a -> s { _glueDevEndpointEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrajarss3path
gdeExtraJarsS3Path :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeExtraJarsS3Path = lens _glueDevEndpointExtraJarsS3Path (\s a -> s { _glueDevEndpointExtraJarsS3Path = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrapythonlibss3path
gdeExtraPythonLibsS3Path :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeExtraPythonLibsS3Path = lens _glueDevEndpointExtraPythonLibsS3Path (\s a -> s { _glueDevEndpointExtraPythonLibsS3Path = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-numberofnodes
gdeNumberOfNodes :: Lens' GlueDevEndpoint (Maybe (Val Integer))
gdeNumberOfNodes = lens _glueDevEndpointNumberOfNodes (\s a -> s { _glueDevEndpointNumberOfNodes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-publickey
gdePublicKey :: Lens' GlueDevEndpoint (Val Text)
gdePublicKey = lens _glueDevEndpointPublicKey (\s a -> s { _glueDevEndpointPublicKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-rolearn
gdeRoleArn :: Lens' GlueDevEndpoint (Val Text)
gdeRoleArn = lens _glueDevEndpointRoleArn (\s a -> s { _glueDevEndpointRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securitygroupids
gdeSecurityGroupIds :: Lens' GlueDevEndpoint (Maybe (ValList Text))
gdeSecurityGroupIds = lens _glueDevEndpointSecurityGroupIds (\s a -> s { _glueDevEndpointSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-subnetid
gdeSubnetId :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeSubnetId = lens _glueDevEndpointSubnetId (\s a -> s { _glueDevEndpointSubnetId = a })
