{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Lambda::Alias resource creates an alias that points to the
-- version of an AWS Lambda (Lambda) function that you specify. Use aliases
-- when you want to control which version of your function other services or
-- applications invoke. Those services or applications can use your function's
-- alias so that they don't need to be updated whenever you release a new
-- version of your function. For more information, see Introduction to AWS
-- Lambda Aliases in the AWS Lambda Developer Guide.

module Stratosphere.Resources.LambdaAlias where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaAlias. See 'lambdaAlias' for a more
-- convenient constructor.
data LambdaAlias =
  LambdaAlias
  { _lambdaAliasDescription :: Maybe (Val Text)
  , _lambdaAliasFunctionName :: Val Text
  , _lambdaAliasFunctionVersion :: Val Text
  , _lambdaAliasName :: Val Text
  } deriving (Show, Generic)

instance ToJSON LambdaAlias where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON LambdaAlias where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

-- | Constructor for 'LambdaAlias' containing required fields as arguments.
lambdaAlias
  :: Val Text -- ^ 'laFunctionName'
  -> Val Text -- ^ 'laFunctionVersion'
  -> Val Text -- ^ 'laName'
  -> LambdaAlias
lambdaAlias functionNamearg functionVersionarg namearg =
  LambdaAlias
  { _lambdaAliasDescription = Nothing
  , _lambdaAliasFunctionName = functionNamearg
  , _lambdaAliasFunctionVersion = functionVersionarg
  , _lambdaAliasName = namearg
  }

-- | Information about the alias, such as its purpose or the Lambda function
-- that is associated with it.
laDescription :: Lens' LambdaAlias (Maybe (Val Text))
laDescription = lens _lambdaAliasDescription (\s a -> s { _lambdaAliasDescription = a })

-- | The Lambda function that you want to associate with this alias. You can
-- specify the function's name or its Amazon Resource Name (ARN).
laFunctionName :: Lens' LambdaAlias (Val Text)
laFunctionName = lens _lambdaAliasFunctionName (\s a -> s { _lambdaAliasFunctionName = a })

-- | The version of the Lambda function that you want to associate with this
-- alias.
laFunctionVersion :: Lens' LambdaAlias (Val Text)
laFunctionVersion = lens _lambdaAliasFunctionVersion (\s a -> s { _lambdaAliasFunctionVersion = a })

-- | A name for the alias.
laName :: Lens' LambdaAlias (Val Text)
laName = lens _lambdaAliasName (\s a -> s { _lambdaAliasName = a })