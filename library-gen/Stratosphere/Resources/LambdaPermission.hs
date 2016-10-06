{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Lambda::Permission resource associates a policy statement with a
-- specific AWS Lambda (Lambda) function's access policy. The function policy
-- grants a specific AWS service or application permission to invoke the
-- function. For more information, see AddPermission in the AWS Lambda
-- Developer Guide.

module Stratosphere.Resources.LambdaPermission where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

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
  } deriving (Show, Generic)

instance ToJSON LambdaPermission where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON LambdaPermission where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

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

-- | The Lambda actions that you want to allow in this statement. For example,
-- you can specify lambda:CreateFunction to specify a certain action, or use a
-- wildcard (lambda:*) to grant permission to all Lambda actions. For a list
-- of actions, see Actions and Condition Context Keys for AWS Lambda in the
-- IAM User Guide.
lpAction :: Lens' LambdaPermission (Val Text)
lpAction = lens _lambdaPermissionAction (\s a -> s { _lambdaPermissionAction = a })

-- | The name (physical ID) or Amazon Resource Name (ARN) of the Lambda
-- function that you want to associate with this statement. Lambda adds this
-- statement to the function's access policy.
lpFunctionName :: Lens' LambdaPermission (Val Text)
lpFunctionName = lens _lambdaPermissionFunctionName (\s a -> s { _lambdaPermissionFunctionName = a })

-- | The entity for which you are granting permission to invoke the Lambda
-- function. This entity can be any valid AWS service principal, such as
-- s3.amazonaws.com or sns.amazonaws.com, or, if you are granting
-- cross-account permission, an AWS account ID. For example, you might want to
-- allow a custom application in another AWS account to push events to Lambda
-- by invoking your function.
lpPrincipal :: Lens' LambdaPermission (Val Text)
lpPrincipal = lens _lambdaPermissionPrincipal (\s a -> s { _lambdaPermissionPrincipal = a })

-- | The AWS account ID (without hyphens) of the source owner. For example, if
-- you specify an S3 bucket in the SourceArn property, this value is the
-- bucket owner's account ID. You can use this property to ensure that all
-- source principals are owned by a specific account. Important This property
-- is not supported by all event sources. For more information, see the
-- SourceAccount parameter for the AddPermission action in the AWS Lambda
-- Developer Guide.
lpSourceAccount :: Lens' LambdaPermission (Maybe (Val Text))
lpSourceAccount = lens _lambdaPermissionSourceAccount (\s a -> s { _lambdaPermissionSourceAccount = a })

-- | The ARN of a resource that is invoking your function. When granting
-- Amazon Simple Storage Service (Amazon S3) permission to invoke your
-- function, specify this property with the bucket ARN as its value. This
-- ensures that events generated only from the specified bucket, not just any
-- bucket from any AWS account that creates a mapping to your function, can
-- invoke the function. Important This property is not supported by all event
-- sources. For more information, see the SourceArn parameter for the
-- AddPermission action in the AWS Lambda Developer Guide.
lpSourceArn :: Lens' LambdaPermission (Maybe (Val Text))
lpSourceArn = lens _lambdaPermissionSourceArn (\s a -> s { _lambdaPermissionSourceArn = a })