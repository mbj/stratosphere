{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | StreamSpecification is a property of the AWS::DynamoDB::Table resource
-- that defines the settings of a DynamoDB table's stream.

module Stratosphere.ResourceProperties.DynamoDBStreamSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBStreamSpecification. See
-- 'dynamoDBStreamSpecification' for a more convenient constructor.
data DynamoDBStreamSpecification =
  DynamoDBStreamSpecification
  { _dynamoDBStreamSpecificationStreamViewType :: StreamViewType
  } deriving (Show, Generic)

instance ToJSON DynamoDBStreamSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON DynamoDBStreamSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'DynamoDBStreamSpecification' containing required fields
-- as arguments.
dynamoDBStreamSpecification
  :: StreamViewType -- ^ 'ddbssStreamViewType'
  -> DynamoDBStreamSpecification
dynamoDBStreamSpecification streamViewTypearg =
  DynamoDBStreamSpecification
  { _dynamoDBStreamSpecificationStreamViewType = streamViewTypearg
  }

-- | Determines the information that the stream captures when an item in the
-- table is modified. For valid values, see StreamSpecification in the Amazon
-- DynamoDB API Reference.
ddbssStreamViewType :: Lens' DynamoDBStreamSpecification StreamViewType
ddbssStreamViewType = lens _dynamoDBStreamSpecificationStreamViewType (\s a -> s { _dynamoDBStreamSpecificationStreamViewType = a })