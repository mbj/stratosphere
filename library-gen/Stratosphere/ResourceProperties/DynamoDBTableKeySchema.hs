
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html

module Stratosphere.ResourceProperties.DynamoDBTableKeySchema where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableKeySchema. See
-- 'dynamoDBTableKeySchema' for a more convenient constructor.
data DynamoDBTableKeySchema =
  DynamoDBTableKeySchema
  { _dynamoDBTableKeySchemaAttributeName :: Val Text
  , _dynamoDBTableKeySchemaKeyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableKeySchema where
  toJSON DynamoDBTableKeySchema{..} =
    object $
    catMaybes
    [ (Just . ("AttributeName",) . toJSON) _dynamoDBTableKeySchemaAttributeName
    , (Just . ("KeyType",) . toJSON) _dynamoDBTableKeySchemaKeyType
    ]

-- | Constructor for 'DynamoDBTableKeySchema' containing required fields as
-- arguments.
dynamoDBTableKeySchema
  :: Val Text -- ^ 'ddbtksAttributeName'
  -> Val Text -- ^ 'ddbtksKeyType'
  -> DynamoDBTableKeySchema
dynamoDBTableKeySchema attributeNamearg keyTypearg =
  DynamoDBTableKeySchema
  { _dynamoDBTableKeySchemaAttributeName = attributeNamearg
  , _dynamoDBTableKeySchemaKeyType = keyTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-attributename
ddbtksAttributeName :: Lens' DynamoDBTableKeySchema (Val Text)
ddbtksAttributeName = lens _dynamoDBTableKeySchemaAttributeName (\s a -> s { _dynamoDBTableKeySchemaAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-keytype
ddbtksKeyType :: Lens' DynamoDBTableKeySchema (Val Text)
ddbtksKeyType = lens _dynamoDBTableKeySchemaKeyType (\s a -> s { _dynamoDBTableKeySchemaKeyType = a })
