{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html

module Stratosphere.ResourceProperties.LambdaFunctionTracingConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionTracingConfig. See
-- 'lambdaFunctionTracingConfig' for a more convenient constructor.
data LambdaFunctionTracingConfig =
  LambdaFunctionTracingConfig
  { _lambdaFunctionTracingConfigMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LambdaFunctionTracingConfig where
  toJSON LambdaFunctionTracingConfig{..} =
    object $
    catMaybes
    [ fmap (("Mode",) . toJSON) _lambdaFunctionTracingConfigMode
    ]

instance FromJSON LambdaFunctionTracingConfig where
  parseJSON (Object obj) =
    LambdaFunctionTracingConfig <$>
      (obj .:? "Mode")
  parseJSON _ = mempty

-- | Constructor for 'LambdaFunctionTracingConfig' containing required fields
-- as arguments.
lambdaFunctionTracingConfig
  :: LambdaFunctionTracingConfig
lambdaFunctionTracingConfig  =
  LambdaFunctionTracingConfig
  { _lambdaFunctionTracingConfigMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html#cfn-lambda-function-tracingconfig-mode
lftcMode :: Lens' LambdaFunctionTracingConfig (Maybe (Val Text))
lftcMode = lens _lambdaFunctionTracingConfigMode (\s a -> s { _lambdaFunctionTracingConfigMode = a })
