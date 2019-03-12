{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html

module Stratosphere.ResourceProperties.DynamoDBTablePointInTimeRecoverySpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- DynamoDBTablePointInTimeRecoverySpecification. See
-- 'dynamoDBTablePointInTimeRecoverySpecification' for a more convenient
-- constructor.
data DynamoDBTablePointInTimeRecoverySpecification =
  DynamoDBTablePointInTimeRecoverySpecification
  { _dynamoDBTablePointInTimeRecoverySpecificationPointInTimeRecoveryEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON DynamoDBTablePointInTimeRecoverySpecification where
  toJSON DynamoDBTablePointInTimeRecoverySpecification{..} =
    object $
    catMaybes
    [ fmap (("PointInTimeRecoveryEnabled",) . toJSON) _dynamoDBTablePointInTimeRecoverySpecificationPointInTimeRecoveryEnabled
    ]

-- | Constructor for 'DynamoDBTablePointInTimeRecoverySpecification'
-- containing required fields as arguments.
dynamoDBTablePointInTimeRecoverySpecification
  :: DynamoDBTablePointInTimeRecoverySpecification
dynamoDBTablePointInTimeRecoverySpecification  =
  DynamoDBTablePointInTimeRecoverySpecification
  { _dynamoDBTablePointInTimeRecoverySpecificationPointInTimeRecoveryEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html#cfn-dynamodb-table-pointintimerecoveryspecification-pointintimerecoveryenabled
ddbtpitrsPointInTimeRecoveryEnabled :: Lens' DynamoDBTablePointInTimeRecoverySpecification (Maybe (Val Bool))
ddbtpitrsPointInTimeRecoveryEnabled = lens _dynamoDBTablePointInTimeRecoverySpecificationPointInTimeRecoveryEnabled (\s a -> s { _dynamoDBTablePointInTimeRecoverySpecificationPointInTimeRecoveryEnabled = a })
