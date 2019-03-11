{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html

module Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableStreamSpecification. See
-- 'dynamoDBTableStreamSpecification' for a more convenient constructor.
data DynamoDBTableStreamSpecification =
  DynamoDBTableStreamSpecification
  { _dynamoDBTableStreamSpecificationStreamViewType :: Val StreamViewType
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableStreamSpecification where
  toJSON DynamoDBTableStreamSpecification{..} =
    object $
    catMaybes
    [ (Just . ("StreamViewType",) . toJSON) _dynamoDBTableStreamSpecificationStreamViewType
    ]

-- | Constructor for 'DynamoDBTableStreamSpecification' containing required
-- fields as arguments.
dynamoDBTableStreamSpecification
  :: Val StreamViewType -- ^ 'ddbtssStreamViewType'
  -> DynamoDBTableStreamSpecification
dynamoDBTableStreamSpecification streamViewTypearg =
  DynamoDBTableStreamSpecification
  { _dynamoDBTableStreamSpecificationStreamViewType = streamViewTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html#cfn-dynamodb-streamspecification-streamviewtype
ddbtssStreamViewType :: Lens' DynamoDBTableStreamSpecification (Val StreamViewType)
ddbtssStreamViewType = lens _dynamoDBTableStreamSpecificationStreamViewType (\s a -> s { _dynamoDBTableStreamSpecificationStreamViewType = a })
