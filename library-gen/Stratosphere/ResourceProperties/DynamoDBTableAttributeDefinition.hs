
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html

module Stratosphere.ResourceProperties.DynamoDBTableAttributeDefinition where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableAttributeDefinition. See
-- 'dynamoDBTableAttributeDefinition' for a more convenient constructor.
data DynamoDBTableAttributeDefinition =
  DynamoDBTableAttributeDefinition
  { _dynamoDBTableAttributeDefinitionAttributeName :: Val Text
  , _dynamoDBTableAttributeDefinitionAttributeType :: Val Text
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableAttributeDefinition where
  toJSON DynamoDBTableAttributeDefinition{..} =
    object $
    catMaybes
    [ (Just . ("AttributeName",) . toJSON) _dynamoDBTableAttributeDefinitionAttributeName
    , (Just . ("AttributeType",) . toJSON) _dynamoDBTableAttributeDefinitionAttributeType
    ]

-- | Constructor for 'DynamoDBTableAttributeDefinition' containing required
-- fields as arguments.
dynamoDBTableAttributeDefinition
  :: Val Text -- ^ 'ddbtadAttributeName'
  -> Val Text -- ^ 'ddbtadAttributeType'
  -> DynamoDBTableAttributeDefinition
dynamoDBTableAttributeDefinition attributeNamearg attributeTypearg =
  DynamoDBTableAttributeDefinition
  { _dynamoDBTableAttributeDefinitionAttributeName = attributeNamearg
  , _dynamoDBTableAttributeDefinitionAttributeType = attributeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename
ddbtadAttributeName :: Lens' DynamoDBTableAttributeDefinition (Val Text)
ddbtadAttributeName = lens _dynamoDBTableAttributeDefinitionAttributeName (\s a -> s { _dynamoDBTableAttributeDefinitionAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename-attributetype
ddbtadAttributeType :: Lens' DynamoDBTableAttributeDefinition (Val Text)
ddbtadAttributeType = lens _dynamoDBTableAttributeDefinitionAttributeType (\s a -> s { _dynamoDBTableAttributeDefinitionAttributeType = a })
