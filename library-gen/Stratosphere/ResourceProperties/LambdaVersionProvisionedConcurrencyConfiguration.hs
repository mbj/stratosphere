
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-provisionedconcurrencyconfiguration.html

module Stratosphere.ResourceProperties.LambdaVersionProvisionedConcurrencyConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- LambdaVersionProvisionedConcurrencyConfiguration. See
-- 'lambdaVersionProvisionedConcurrencyConfiguration' for a more convenient
-- constructor.
data LambdaVersionProvisionedConcurrencyConfiguration =
  LambdaVersionProvisionedConcurrencyConfiguration
  { _lambdaVersionProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions :: Val Integer
  } deriving (Show, Eq)

instance ToJSON LambdaVersionProvisionedConcurrencyConfiguration where
  toJSON LambdaVersionProvisionedConcurrencyConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ProvisionedConcurrentExecutions",) . toJSON) _lambdaVersionProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions
    ]

-- | Constructor for 'LambdaVersionProvisionedConcurrencyConfiguration'
-- containing required fields as arguments.
lambdaVersionProvisionedConcurrencyConfiguration
  :: Val Integer -- ^ 'lvpccProvisionedConcurrentExecutions'
  -> LambdaVersionProvisionedConcurrencyConfiguration
lambdaVersionProvisionedConcurrencyConfiguration provisionedConcurrentExecutionsarg =
  LambdaVersionProvisionedConcurrencyConfiguration
  { _lambdaVersionProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions = provisionedConcurrentExecutionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-provisionedconcurrencyconfiguration.html#cfn-lambda-version-provisionedconcurrencyconfiguration-provisionedconcurrentexecutions
lvpccProvisionedConcurrentExecutions :: Lens' LambdaVersionProvisionedConcurrencyConfiguration (Val Integer)
lvpccProvisionedConcurrentExecutions = lens _lambdaVersionProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions (\s a -> s { _lambdaVersionProvisionedConcurrencyConfigurationProvisionedConcurrentExecutions = a })
