{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html

module Stratosphere.Resources.LambdaLayerVersionPermission where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaLayerVersionPermission. See
-- 'lambdaLayerVersionPermission' for a more convenient constructor.
data LambdaLayerVersionPermission =
  LambdaLayerVersionPermission
  { _lambdaLayerVersionPermissionAction :: Val Text
  , _lambdaLayerVersionPermissionLayerVersionArn :: Val Text
  , _lambdaLayerVersionPermissionOrganizationId :: Maybe (Val Text)
  , _lambdaLayerVersionPermissionPrincipal :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties LambdaLayerVersionPermission where
  toResourceProperties LambdaLayerVersionPermission{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::LayerVersionPermission"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Action",) . toJSON) _lambdaLayerVersionPermissionAction
        , (Just . ("LayerVersionArn",) . toJSON) _lambdaLayerVersionPermissionLayerVersionArn
        , fmap (("OrganizationId",) . toJSON) _lambdaLayerVersionPermissionOrganizationId
        , (Just . ("Principal",) . toJSON) _lambdaLayerVersionPermissionPrincipal
        ]
    }

-- | Constructor for 'LambdaLayerVersionPermission' containing required fields
-- as arguments.
lambdaLayerVersionPermission
  :: Val Text -- ^ 'llvpAction'
  -> Val Text -- ^ 'llvpLayerVersionArn'
  -> Val Text -- ^ 'llvpPrincipal'
  -> LambdaLayerVersionPermission
lambdaLayerVersionPermission actionarg layerVersionArnarg principalarg =
  LambdaLayerVersionPermission
  { _lambdaLayerVersionPermissionAction = actionarg
  , _lambdaLayerVersionPermissionLayerVersionArn = layerVersionArnarg
  , _lambdaLayerVersionPermissionOrganizationId = Nothing
  , _lambdaLayerVersionPermissionPrincipal = principalarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-action
llvpAction :: Lens' LambdaLayerVersionPermission (Val Text)
llvpAction = lens _lambdaLayerVersionPermissionAction (\s a -> s { _lambdaLayerVersionPermissionAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-layerversionarn
llvpLayerVersionArn :: Lens' LambdaLayerVersionPermission (Val Text)
llvpLayerVersionArn = lens _lambdaLayerVersionPermissionLayerVersionArn (\s a -> s { _lambdaLayerVersionPermissionLayerVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-organizationid
llvpOrganizationId :: Lens' LambdaLayerVersionPermission (Maybe (Val Text))
llvpOrganizationId = lens _lambdaLayerVersionPermissionOrganizationId (\s a -> s { _lambdaLayerVersionPermissionOrganizationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-principal
llvpPrincipal :: Lens' LambdaLayerVersionPermission (Val Text)
llvpPrincipal = lens _lambdaLayerVersionPermissionPrincipal (\s a -> s { _lambdaLayerVersionPermissionPrincipal = a })
