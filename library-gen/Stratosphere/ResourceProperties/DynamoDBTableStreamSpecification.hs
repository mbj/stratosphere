{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html

module Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableStreamSpecification. See
-- | 'dynamoDBTableStreamSpecification' for a more convenient constructor.
data DynamoDBTableStreamSpecification =
  DynamoDBTableStreamSpecification
  { _dynamoDBTableStreamSpecificationStreamViewType :: Val StreamViewType
  } deriving (Show, Generic)

instance ToJSON DynamoDBTableStreamSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON DynamoDBTableStreamSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'DynamoDBTableStreamSpecification' containing required
-- | fields as arguments.
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
