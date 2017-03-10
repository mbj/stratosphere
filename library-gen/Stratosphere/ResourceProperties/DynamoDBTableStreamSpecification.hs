{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html

module Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    [ Just ("StreamViewType" .= _dynamoDBTableStreamSpecificationStreamViewType)
    ]

instance FromJSON DynamoDBTableStreamSpecification where
  parseJSON (Object obj) =
    DynamoDBTableStreamSpecification <$>
      obj .: "StreamViewType"
  parseJSON _ = mempty

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
