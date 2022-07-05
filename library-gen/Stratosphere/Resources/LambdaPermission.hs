{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html

module Stratosphere.Resources.LambdaPermission where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaPermission. See 'lambdaPermission'
-- for a more convenient constructor.
data LambdaPermission =
  LambdaPermission
  { _lambdaPermissionAction :: Val Text
  , _lambdaPermissionEventSourceToken :: Maybe (Val Text)
  , _lambdaPermissionFunctionName :: Val Text
  , _lambdaPermissionPrincipal :: Val Text
  , _lambdaPermissionSourceAccount :: Maybe (Val Text)
  , _lambdaPermissionSourceArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties LambdaPermission where
  toResourceProperties LambdaPermission{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::Permission"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Action",) . toJSON) _lambdaPermissionAction
        , fmap (("EventSourceToken",) . toJSON) _lambdaPermissionEventSourceToken
        , (Just . ("FunctionName",) . toJSON) _lambdaPermissionFunctionName
        , (Just . ("Principal",) . toJSON) _lambdaPermissionPrincipal
        , fmap (("SourceAccount",) . toJSON) _lambdaPermissionSourceAccount
        , fmap (("SourceArn",) . toJSON) _lambdaPermissionSourceArn
        ]
    }

-- | Constructor for 'LambdaPermission' containing required fields as
-- arguments.
lambdaPermission
  :: Val Text -- ^ 'lpAction'
  -> Val Text -- ^ 'lpFunctionName'
  -> Val Text -- ^ 'lpPrincipal'
  -> LambdaPermission
lambdaPermission actionarg functionNamearg principalarg =
  LambdaPermission
  { _lambdaPermissionAction = actionarg
  , _lambdaPermissionEventSourceToken = Nothing
  , _lambdaPermissionFunctionName = functionNamearg
  , _lambdaPermissionPrincipal = principalarg
  , _lambdaPermissionSourceAccount = Nothing
  , _lambdaPermissionSourceArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-action
lpAction :: Lens' LambdaPermission (Val Text)
lpAction = lens _lambdaPermissionAction (\s a -> s { _lambdaPermissionAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-eventsourcetoken
lpEventSourceToken :: Lens' LambdaPermission (Maybe (Val Text))
lpEventSourceToken = lens _lambdaPermissionEventSourceToken (\s a -> s { _lambdaPermissionEventSourceToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-functionname
lpFunctionName :: Lens' LambdaPermission (Val Text)
lpFunctionName = lens _lambdaPermissionFunctionName (\s a -> s { _lambdaPermissionFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-principal
lpPrincipal :: Lens' LambdaPermission (Val Text)
lpPrincipal = lens _lambdaPermissionPrincipal (\s a -> s { _lambdaPermissionPrincipal = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-sourceaccount
lpSourceAccount :: Lens' LambdaPermission (Maybe (Val Text))
lpSourceAccount = lens _lambdaPermissionSourceAccount (\s a -> s { _lambdaPermissionSourceAccount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-sourcearn
lpSourceArn :: Lens' LambdaPermission (Maybe (Val Text))
lpSourceArn = lens _lambdaPermissionSourceArn (\s a -> s { _lambdaPermissionSourceArn = a })
