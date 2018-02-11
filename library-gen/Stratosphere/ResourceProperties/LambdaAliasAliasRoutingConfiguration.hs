{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html

module Stratosphere.ResourceProperties.LambdaAliasAliasRoutingConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaAliasVersionWeight

-- | Full data type definition for LambdaAliasAliasRoutingConfiguration. See
-- 'lambdaAliasAliasRoutingConfiguration' for a more convenient constructor.
data LambdaAliasAliasRoutingConfiguration =
  LambdaAliasAliasRoutingConfiguration
  { _lambdaAliasAliasRoutingConfigurationAdditionalVersionWeights :: [LambdaAliasVersionWeight]
  } deriving (Show, Eq)

instance ToJSON LambdaAliasAliasRoutingConfiguration where
  toJSON LambdaAliasAliasRoutingConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("AdditionalVersionWeights",) . toJSON) _lambdaAliasAliasRoutingConfigurationAdditionalVersionWeights
    ]

instance FromJSON LambdaAliasAliasRoutingConfiguration where
  parseJSON (Object obj) =
    LambdaAliasAliasRoutingConfiguration <$>
      (obj .: "AdditionalVersionWeights")
  parseJSON _ = mempty

-- | Constructor for 'LambdaAliasAliasRoutingConfiguration' containing
-- required fields as arguments.
lambdaAliasAliasRoutingConfiguration
  :: [LambdaAliasVersionWeight] -- ^ 'laarcAdditionalVersionWeights'
  -> LambdaAliasAliasRoutingConfiguration
lambdaAliasAliasRoutingConfiguration additionalVersionWeightsarg =
  LambdaAliasAliasRoutingConfiguration
  { _lambdaAliasAliasRoutingConfigurationAdditionalVersionWeights = additionalVersionWeightsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights
laarcAdditionalVersionWeights :: Lens' LambdaAliasAliasRoutingConfiguration [LambdaAliasVersionWeight]
laarcAdditionalVersionWeights = lens _lambdaAliasAliasRoutingConfigurationAdditionalVersionWeights (\s a -> s { _lambdaAliasAliasRoutingConfigurationAdditionalVersionWeights = a })
