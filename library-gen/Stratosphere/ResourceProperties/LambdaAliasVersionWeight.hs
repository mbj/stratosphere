{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html

module Stratosphere.ResourceProperties.LambdaAliasVersionWeight where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaAliasVersionWeight. See
-- 'lambdaAliasVersionWeight' for a more convenient constructor.
data LambdaAliasVersionWeight =
  LambdaAliasVersionWeight
  { _lambdaAliasVersionWeightFunctionVersion :: Val Text
  , _lambdaAliasVersionWeightFunctionWeight :: Val Double
  } deriving (Show, Eq)

instance ToJSON LambdaAliasVersionWeight where
  toJSON LambdaAliasVersionWeight{..} =
    object $
    catMaybes
    [ (Just . ("FunctionVersion",) . toJSON) _lambdaAliasVersionWeightFunctionVersion
    , (Just . ("FunctionWeight",) . toJSON . fmap Double') _lambdaAliasVersionWeightFunctionWeight
    ]

instance FromJSON LambdaAliasVersionWeight where
  parseJSON (Object obj) =
    LambdaAliasVersionWeight <$>
      (obj .: "FunctionVersion") <*>
      fmap (fmap unDouble') (obj .: "FunctionWeight")
  parseJSON _ = mempty

-- | Constructor for 'LambdaAliasVersionWeight' containing required fields as
-- arguments.
lambdaAliasVersionWeight
  :: Val Text -- ^ 'lavwFunctionVersion'
  -> Val Double -- ^ 'lavwFunctionWeight'
  -> LambdaAliasVersionWeight
lambdaAliasVersionWeight functionVersionarg functionWeightarg =
  LambdaAliasVersionWeight
  { _lambdaAliasVersionWeightFunctionVersion = functionVersionarg
  , _lambdaAliasVersionWeightFunctionWeight = functionWeightarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionversion
lavwFunctionVersion :: Lens' LambdaAliasVersionWeight (Val Text)
lavwFunctionVersion = lens _lambdaAliasVersionWeightFunctionVersion (\s a -> s { _lambdaAliasVersionWeightFunctionVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionweight
lavwFunctionWeight :: Lens' LambdaAliasVersionWeight (Val Double)
lavwFunctionWeight = lens _lambdaAliasVersionWeightFunctionWeight (\s a -> s { _lambdaAliasVersionWeightFunctionWeight = a })
