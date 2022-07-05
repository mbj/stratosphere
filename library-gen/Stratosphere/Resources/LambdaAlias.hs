{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html

module Stratosphere.Resources.LambdaAlias where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaAliasProvisionedConcurrencyConfiguration
import Stratosphere.ResourceProperties.LambdaAliasAliasRoutingConfiguration

-- | Full data type definition for LambdaAlias. See 'lambdaAlias' for a more
-- convenient constructor.
data LambdaAlias =
  LambdaAlias
  { _lambdaAliasDescription :: Maybe (Val Text)
  , _lambdaAliasFunctionName :: Val Text
  , _lambdaAliasFunctionVersion :: Val Text
  , _lambdaAliasName :: Val Text
  , _lambdaAliasProvisionedConcurrencyConfig :: Maybe LambdaAliasProvisionedConcurrencyConfiguration
  , _lambdaAliasRoutingConfig :: Maybe LambdaAliasAliasRoutingConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties LambdaAlias where
  toResourceProperties LambdaAlias{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::Alias"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _lambdaAliasDescription
        , (Just . ("FunctionName",) . toJSON) _lambdaAliasFunctionName
        , (Just . ("FunctionVersion",) . toJSON) _lambdaAliasFunctionVersion
        , (Just . ("Name",) . toJSON) _lambdaAliasName
        , fmap (("ProvisionedConcurrencyConfig",) . toJSON) _lambdaAliasProvisionedConcurrencyConfig
        , fmap (("RoutingConfig",) . toJSON) _lambdaAliasRoutingConfig
        ]
    }

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
  , _lambdaAliasProvisionedConcurrencyConfig = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-provisionedconcurrencyconfig
laProvisionedConcurrencyConfig :: Lens' LambdaAlias (Maybe LambdaAliasProvisionedConcurrencyConfiguration)
laProvisionedConcurrencyConfig = lens _lambdaAliasProvisionedConcurrencyConfig (\s a -> s { _lambdaAliasProvisionedConcurrencyConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-routingconfig
laRoutingConfig :: Lens' LambdaAlias (Maybe LambdaAliasAliasRoutingConfiguration)
laRoutingConfig = lens _lambdaAliasRoutingConfig (\s a -> s { _lambdaAliasRoutingConfig = a })
