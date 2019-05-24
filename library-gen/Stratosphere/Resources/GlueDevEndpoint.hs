{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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
  , _glueDevEndpointPublicKey :: Maybe (Val Text)
  , _glueDevEndpointRoleArn :: Val Text
  , _glueDevEndpointSecurityConfiguration :: Maybe (Val Text)
  , _glueDevEndpointSecurityGroupIds :: Maybe (ValList Text)
  , _glueDevEndpointSubnetId :: Maybe (Val Text)
  , _glueDevEndpointTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GlueDevEndpoint where
  toResourceProperties GlueDevEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::DevEndpoint"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("EndpointName",) . toJSON) _glueDevEndpointEndpointName
        , fmap (("ExtraJarsS3Path",) . toJSON) _glueDevEndpointExtraJarsS3Path
        , fmap (("ExtraPythonLibsS3Path",) . toJSON) _glueDevEndpointExtraPythonLibsS3Path
        , fmap (("NumberOfNodes",) . toJSON) _glueDevEndpointNumberOfNodes
        , fmap (("PublicKey",) . toJSON) _glueDevEndpointPublicKey
        , (Just . ("RoleArn",) . toJSON) _glueDevEndpointRoleArn
        , fmap (("SecurityConfiguration",) . toJSON) _glueDevEndpointSecurityConfiguration
        , fmap (("SecurityGroupIds",) . toJSON) _glueDevEndpointSecurityGroupIds
        , fmap (("SubnetId",) . toJSON) _glueDevEndpointSubnetId
        , fmap (("Tags",) . toJSON) _glueDevEndpointTags
        ]
    }

-- | Constructor for 'GlueDevEndpoint' containing required fields as
-- arguments.
glueDevEndpoint
  :: Val Text -- ^ 'gdeRoleArn'
  -> GlueDevEndpoint
glueDevEndpoint roleArnarg =
  GlueDevEndpoint
  { _glueDevEndpointEndpointName = Nothing
  , _glueDevEndpointExtraJarsS3Path = Nothing
  , _glueDevEndpointExtraPythonLibsS3Path = Nothing
  , _glueDevEndpointNumberOfNodes = Nothing
  , _glueDevEndpointPublicKey = Nothing
  , _glueDevEndpointRoleArn = roleArnarg
  , _glueDevEndpointSecurityConfiguration = Nothing
  , _glueDevEndpointSecurityGroupIds = Nothing
  , _glueDevEndpointSubnetId = Nothing
  , _glueDevEndpointTags = Nothing
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
gdePublicKey :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdePublicKey = lens _glueDevEndpointPublicKey (\s a -> s { _glueDevEndpointPublicKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-rolearn
gdeRoleArn :: Lens' GlueDevEndpoint (Val Text)
gdeRoleArn = lens _glueDevEndpointRoleArn (\s a -> s { _glueDevEndpointRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securityconfiguration
gdeSecurityConfiguration :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeSecurityConfiguration = lens _glueDevEndpointSecurityConfiguration (\s a -> s { _glueDevEndpointSecurityConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securitygroupids
gdeSecurityGroupIds :: Lens' GlueDevEndpoint (Maybe (ValList Text))
gdeSecurityGroupIds = lens _glueDevEndpointSecurityGroupIds (\s a -> s { _glueDevEndpointSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-subnetid
gdeSubnetId :: Lens' GlueDevEndpoint (Maybe (Val Text))
gdeSubnetId = lens _glueDevEndpointSubnetId (\s a -> s { _glueDevEndpointSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-tags
gdeTags :: Lens' GlueDevEndpoint (Maybe Object)
gdeTags = lens _glueDevEndpointTags (\s a -> s { _glueDevEndpointTags = a })
