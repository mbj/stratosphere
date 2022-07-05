{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html

module Stratosphere.Resources.LambdaEventInvokeConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaEventInvokeConfigDestinationConfig

-- | Full data type definition for LambdaEventInvokeConfig. See
-- 'lambdaEventInvokeConfig' for a more convenient constructor.
data LambdaEventInvokeConfig =
  LambdaEventInvokeConfig
  { _lambdaEventInvokeConfigDestinationConfig :: Maybe LambdaEventInvokeConfigDestinationConfig
  , _lambdaEventInvokeConfigFunctionName :: Val Text
  , _lambdaEventInvokeConfigMaximumEventAgeInSeconds :: Maybe (Val Integer)
  , _lambdaEventInvokeConfigMaximumRetryAttempts :: Maybe (Val Integer)
  , _lambdaEventInvokeConfigQualifier :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties LambdaEventInvokeConfig where
  toResourceProperties LambdaEventInvokeConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::EventInvokeConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DestinationConfig",) . toJSON) _lambdaEventInvokeConfigDestinationConfig
        , (Just . ("FunctionName",) . toJSON) _lambdaEventInvokeConfigFunctionName
        , fmap (("MaximumEventAgeInSeconds",) . toJSON) _lambdaEventInvokeConfigMaximumEventAgeInSeconds
        , fmap (("MaximumRetryAttempts",) . toJSON) _lambdaEventInvokeConfigMaximumRetryAttempts
        , (Just . ("Qualifier",) . toJSON) _lambdaEventInvokeConfigQualifier
        ]
    }

-- | Constructor for 'LambdaEventInvokeConfig' containing required fields as
-- arguments.
lambdaEventInvokeConfig
  :: Val Text -- ^ 'leicFunctionName'
  -> Val Text -- ^ 'leicQualifier'
  -> LambdaEventInvokeConfig
lambdaEventInvokeConfig functionNamearg qualifierarg =
  LambdaEventInvokeConfig
  { _lambdaEventInvokeConfigDestinationConfig = Nothing
  , _lambdaEventInvokeConfigFunctionName = functionNamearg
  , _lambdaEventInvokeConfigMaximumEventAgeInSeconds = Nothing
  , _lambdaEventInvokeConfigMaximumRetryAttempts = Nothing
  , _lambdaEventInvokeConfigQualifier = qualifierarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig
leicDestinationConfig :: Lens' LambdaEventInvokeConfig (Maybe LambdaEventInvokeConfigDestinationConfig)
leicDestinationConfig = lens _lambdaEventInvokeConfigDestinationConfig (\s a -> s { _lambdaEventInvokeConfigDestinationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-functionname
leicFunctionName :: Lens' LambdaEventInvokeConfig (Val Text)
leicFunctionName = lens _lambdaEventInvokeConfigFunctionName (\s a -> s { _lambdaEventInvokeConfigFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumeventageinseconds
leicMaximumEventAgeInSeconds :: Lens' LambdaEventInvokeConfig (Maybe (Val Integer))
leicMaximumEventAgeInSeconds = lens _lambdaEventInvokeConfigMaximumEventAgeInSeconds (\s a -> s { _lambdaEventInvokeConfigMaximumEventAgeInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumretryattempts
leicMaximumRetryAttempts :: Lens' LambdaEventInvokeConfig (Maybe (Val Integer))
leicMaximumRetryAttempts = lens _lambdaEventInvokeConfigMaximumRetryAttempts (\s a -> s { _lambdaEventInvokeConfigMaximumRetryAttempts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-qualifier
leicQualifier :: Lens' LambdaEventInvokeConfig (Val Text)
leicQualifier = lens _lambdaEventInvokeConfigQualifier (\s a -> s { _lambdaEventInvokeConfigQualifier = a })
