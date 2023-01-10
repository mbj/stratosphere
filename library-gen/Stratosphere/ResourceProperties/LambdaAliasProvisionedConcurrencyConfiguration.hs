
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html

module Stratosphere.ResourceProperties.LambdaAliasProvisionedConcurrencyConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- LambdaAliasProvisionedConcurrencyConfiguration. See
-- 'lambdaAliasProvisionedConcurrencyConfiguration' for a more convenient
-- constructor.
data LambdaAliasProvisionedConcurrencyConfiguration =
  LambdaAliasProvisionedConcurrencyConfiguration
  { _lambdaAliasProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions :: Val Integer
  } deriving (Show, Eq)

instance ToJSON LambdaAliasProvisionedConcurrencyConfiguration where
  toJSON LambdaAliasProvisionedConcurrencyConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ProvisionedConcurrentExecutions",) . toJSON) _lambdaAliasProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions
    ]

-- | Constructor for 'LambdaAliasProvisionedConcurrencyConfiguration'
-- containing required fields as arguments.
lambdaAliasProvisionedConcurrencyConfiguration
  :: Val Integer -- ^ 'lapccProvisionedConcurrentExecutions'
  -> LambdaAliasProvisionedConcurrencyConfiguration
lambdaAliasProvisionedConcurrencyConfiguration provisionedConcurrentExecutionsarg =
  LambdaAliasProvisionedConcurrencyConfiguration
  { _lambdaAliasProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions = provisionedConcurrentExecutionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html#cfn-lambda-alias-provisionedconcurrencyconfiguration-provisionedconcurrentexecutions
lapccProvisionedConcurrentExecutions :: Lens' LambdaAliasProvisionedConcurrencyConfiguration (Val Integer)
lapccProvisionedConcurrentExecutions = lens _lambdaAliasProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions (\s a -> s { _lambdaAliasProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions = a })
