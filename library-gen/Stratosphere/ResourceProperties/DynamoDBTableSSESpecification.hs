{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html

module Stratosphere.ResourceProperties.DynamoDBTableSSESpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableSSESpecification. See
-- 'dynamoDBTableSSESpecification' for a more convenient constructor.
data DynamoDBTableSSESpecification =
  DynamoDBTableSSESpecification
  { _dynamoDBTableSSESpecificationSSEEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableSSESpecification where
  toJSON DynamoDBTableSSESpecification{..} =
    object $
    catMaybes
    [ (Just . ("SSEEnabled",) . toJSON . fmap Bool') _dynamoDBTableSSESpecificationSSEEnabled
    ]

instance FromJSON DynamoDBTableSSESpecification where
  parseJSON (Object obj) =
    DynamoDBTableSSESpecification <$>
      fmap (fmap unBool') (obj .: "SSEEnabled")
  parseJSON _ = mempty

-- | Constructor for 'DynamoDBTableSSESpecification' containing required
-- fields as arguments.
dynamoDBTableSSESpecification
  :: Val Bool -- ^ 'ddbtssesSSEEnabled'
  -> DynamoDBTableSSESpecification
dynamoDBTableSSESpecification sSEEnabledarg =
  DynamoDBTableSSESpecification
  { _dynamoDBTableSSESpecificationSSEEnabled = sSEEnabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-sseenabled
ddbtssesSSEEnabled :: Lens' DynamoDBTableSSESpecification (Val Bool)
ddbtssesSSEEnabled = lens _dynamoDBTableSSESpecificationSSEEnabled (\s a -> s { _dynamoDBTableSSESpecificationSSEEnabled = a })
