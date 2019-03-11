{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html

module Stratosphere.ResourceProperties.DynamoDBTableTimeToLiveSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableTimeToLiveSpecification. See
-- 'dynamoDBTableTimeToLiveSpecification' for a more convenient constructor.
data DynamoDBTableTimeToLiveSpecification =
  DynamoDBTableTimeToLiveSpecification
  { _dynamoDBTableTimeToLiveSpecificationAttributeName :: Val Text
  , _dynamoDBTableTimeToLiveSpecificationEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableTimeToLiveSpecification where
  toJSON DynamoDBTableTimeToLiveSpecification{..} =
    object $
    catMaybes
    [ (Just . ("AttributeName",) . toJSON) _dynamoDBTableTimeToLiveSpecificationAttributeName
    , (Just . ("Enabled",) . toJSON . fmap Bool') _dynamoDBTableTimeToLiveSpecificationEnabled
    ]

-- | Constructor for 'DynamoDBTableTimeToLiveSpecification' containing
-- required fields as arguments.
dynamoDBTableTimeToLiveSpecification
  :: Val Text -- ^ 'ddbtttlsAttributeName'
  -> Val Bool -- ^ 'ddbtttlsEnabled'
  -> DynamoDBTableTimeToLiveSpecification
dynamoDBTableTimeToLiveSpecification attributeNamearg enabledarg =
  DynamoDBTableTimeToLiveSpecification
  { _dynamoDBTableTimeToLiveSpecificationAttributeName = attributeNamearg
  , _dynamoDBTableTimeToLiveSpecificationEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-attributename
ddbtttlsAttributeName :: Lens' DynamoDBTableTimeToLiveSpecification (Val Text)
ddbtttlsAttributeName = lens _dynamoDBTableTimeToLiveSpecificationAttributeName (\s a -> s { _dynamoDBTableTimeToLiveSpecificationAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-enabled
ddbtttlsEnabled :: Lens' DynamoDBTableTimeToLiveSpecification (Val Bool)
ddbtttlsEnabled = lens _dynamoDBTableTimeToLiveSpecificationEnabled (\s a -> s { _dynamoDBTableTimeToLiveSpecificationEnabled = a })
