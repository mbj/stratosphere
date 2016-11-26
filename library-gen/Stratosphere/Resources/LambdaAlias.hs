{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html

module Stratosphere.Resources.LambdaAlias where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaAlias. See 'lambdaAlias' for a more
-- | convenient constructor.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-description
laDescription :: Lens' LambdaAlias (Maybe (Val Text))
laDescription = lens _lambdaAliasDescription (\s a -> s { _lambdaAliasDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionname
laFunctionName :: Lens' LambdaAlias (Val Text)
laFunctionName = lens _lambdaAliasFunctionName (\s a -> s { _lambdaAliasFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionversion
laFunctionVersion :: Lens' LambdaAlias (Val Text)
laFunctionVersion = lens _lambdaAliasFunctionVersion (\s a -> s { _lambdaAliasFunctionVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-name
laName :: Lens' LambdaAlias (Val Text)
laName = lens _lambdaAliasName (\s a -> s { _lambdaAliasName = a })
