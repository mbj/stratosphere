{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html

module Stratosphere.Resources.LambdaAlias where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.LambdaAliasAliasRoutingConfiguration

-- | Full data type definition for LambdaAlias. See 'lambdaAlias' for a more
-- convenient constructor.
data LambdaAlias =
  LambdaAlias
  { _lambdaAliasDescription :: Maybe (Val Text)
  , _lambdaAliasFunctionName :: Val Text
  , _lambdaAliasFunctionVersion :: Val Text
  , _lambdaAliasName :: Val Text
  , _lambdaAliasRoutingConfig :: Maybe LambdaAliasAliasRoutingConfiguration
  } deriving (Show, Eq)

instance ToJSON LambdaAlias where
  toJSON LambdaAlias{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _lambdaAliasDescription
    , (Just . ("FunctionName",) . toJSON) _lambdaAliasFunctionName
    , (Just . ("FunctionVersion",) . toJSON) _lambdaAliasFunctionVersion
    , (Just . ("Name",) . toJSON) _lambdaAliasName
    , fmap (("RoutingConfig",) . toJSON) _lambdaAliasRoutingConfig
    ]

instance FromJSON LambdaAlias where
  parseJSON (Object obj) =
    LambdaAlias <$>
      (obj .:? "Description") <*>
      (obj .: "FunctionName") <*>
      (obj .: "FunctionVersion") <*>
      (obj .: "Name") <*>
      (obj .:? "RoutingConfig")
  parseJSON _ = mempty

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
  , _lambdaAliasRoutingConfig = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-routingconfig
laRoutingConfig :: Lens' LambdaAlias (Maybe LambdaAliasAliasRoutingConfiguration)
laRoutingConfig = lens _lambdaAliasRoutingConfig (\s a -> s { _lambdaAliasRoutingConfig = a })
