{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Attributes that are copied (projected) from the source table into the
-- index. These attributes are additions to the primary key attributes and
-- index key attributes, which are automatically projected.

module Stratosphere.ResourceProperties.DynamoDBProjectionObject where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DynamoDBProjectionObject. See
-- 'dynamoDBProjectionObject' for a more convenient constructor.
data DynamoDBProjectionObject =
  DynamoDBProjectionObject
  { _dynamoDBProjectionObjectNonKeyAttributes :: Maybe [Val Text]
  , _dynamoDBProjectionObjectProjectionType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON DynamoDBProjectionObject where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON DynamoDBProjectionObject where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'DynamoDBProjectionObject' containing required fields as
-- arguments.
dynamoDBProjectionObject
  :: DynamoDBProjectionObject
dynamoDBProjectionObject  =
  DynamoDBProjectionObject
  { _dynamoDBProjectionObjectNonKeyAttributes = Nothing
  , _dynamoDBProjectionObjectProjectionType = Nothing
  }

-- | The non-key attribute names that are projected into the index. For local
-- secondary indexes, the total count of NonKeyAttributes summed across all of
-- the local secondary indexes must not exceed 20. If you project the same
-- attribute into two different indexes, this counts as two distinct
-- attributes in determining the total.
ddbpoNonKeyAttributes :: Lens' DynamoDBProjectionObject (Maybe [Val Text])
ddbpoNonKeyAttributes = lens _dynamoDBProjectionObjectNonKeyAttributes (\s a -> s { _dynamoDBProjectionObjectNonKeyAttributes = a })

-- | The set of attributes that are projected into the index: Only the index
-- and primary keys are projected into the index. Only the specified table
-- attributes are projected into the index. The list of projected attributes
-- are in NonKeyAttributes. All of the table attributes are projected into the
-- index.
ddbpoProjectionType :: Lens' DynamoDBProjectionObject (Maybe (Val Text))
ddbpoProjectionType = lens _dynamoDBProjectionObjectProjectionType (\s a -> s { _dynamoDBProjectionObjectProjectionType = a })