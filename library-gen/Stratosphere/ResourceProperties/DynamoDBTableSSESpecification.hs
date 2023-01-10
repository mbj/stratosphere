
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html

module Stratosphere.ResourceProperties.DynamoDBTableSSESpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableSSESpecification. See
-- 'dynamoDBTableSSESpecification' for a more convenient constructor.
data DynamoDBTableSSESpecification =
  DynamoDBTableSSESpecification
  { _dynamoDBTableSSESpecificationKMSMasterKeyId :: Maybe (Val Text)
  , _dynamoDBTableSSESpecificationSSEEnabled :: Val Bool
  , _dynamoDBTableSSESpecificationSSEType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableSSESpecification where
  toJSON DynamoDBTableSSESpecification{..} =
    object $
    catMaybes
    [ fmap (("KMSMasterKeyId",) . toJSON) _dynamoDBTableSSESpecificationKMSMasterKeyId
    , (Just . ("SSEEnabled",) . toJSON) _dynamoDBTableSSESpecificationSSEEnabled
    , fmap (("SSEType",) . toJSON) _dynamoDBTableSSESpecificationSSEType
    ]

-- | Constructor for 'DynamoDBTableSSESpecification' containing required
-- fields as arguments.
dynamoDBTableSSESpecification
  :: Val Bool -- ^ 'ddbtssesSSEEnabled'
  -> DynamoDBTableSSESpecification
dynamoDBTableSSESpecification sSEEnabledarg =
  DynamoDBTableSSESpecification
  { _dynamoDBTableSSESpecificationKMSMasterKeyId = Nothing
  , _dynamoDBTableSSESpecificationSSEEnabled = sSEEnabledarg
  , _dynamoDBTableSSESpecificationSSEType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-kmsmasterkeyid
ddbtssesKMSMasterKeyId :: Lens' DynamoDBTableSSESpecification (Maybe (Val Text))
ddbtssesKMSMasterKeyId = lens _dynamoDBTableSSESpecificationKMSMasterKeyId (\s a -> s { _dynamoDBTableSSESpecificationKMSMasterKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-sseenabled
ddbtssesSSEEnabled :: Lens' DynamoDBTableSSESpecification (Val Bool)
ddbtssesSSEEnabled = lens _dynamoDBTableSSESpecificationSSEEnabled (\s a -> s { _dynamoDBTableSSESpecificationSSEEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-ssetype
ddbtssesSSEType :: Lens' DynamoDBTableSSESpecification (Maybe (Val Text))
ddbtssesSSEType = lens _dynamoDBTableSSESpecificationSSEType (\s a -> s { _dynamoDBTableSSESpecificationSSEType = a })
