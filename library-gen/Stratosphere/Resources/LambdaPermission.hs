{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html

module Stratosphere.Resources.LambdaPermission where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LambdaPermission. See 'lambdaPermission'
-- for a more convenient constructor.
data LambdaPermission =
  LambdaPermission
  { _lambdaPermissionAction :: Val Text
  , _lambdaPermissionFunctionName :: Val Text
  , _lambdaPermissionPrincipal :: Val Text
  , _lambdaPermissionSourceAccount :: Maybe (Val Text)
  , _lambdaPermissionSourceArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LambdaPermission where
  toJSON LambdaPermission{..} =
    object $
    catMaybes
    [ Just ("Action" .= _lambdaPermissionAction)
    , Just ("FunctionName" .= _lambdaPermissionFunctionName)
    , Just ("Principal" .= _lambdaPermissionPrincipal)
    , ("SourceAccount" .=) <$> _lambdaPermissionSourceAccount
    , ("SourceArn" .=) <$> _lambdaPermissionSourceArn
    ]

instance FromJSON LambdaPermission where
  parseJSON (Object obj) =
    LambdaPermission <$>
      obj .: "Action" <*>
      obj .: "FunctionName" <*>
      obj .: "Principal" <*>
      obj .:? "SourceAccount" <*>
      obj .:? "SourceArn"
  parseJSON _ = mempty

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
  , _lambdaPermissionFunctionName = functionNamearg
  , _lambdaPermissionPrincipal = principalarg
  , _lambdaPermissionSourceAccount = Nothing
  , _lambdaPermissionSourceArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-action
lpAction :: Lens' LambdaPermission (Val Text)
lpAction = lens _lambdaPermissionAction (\s a -> s { _lambdaPermissionAction = a })

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
