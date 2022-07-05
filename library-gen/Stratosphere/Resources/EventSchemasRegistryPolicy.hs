{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html

module Stratosphere.Resources.EventSchemasRegistryPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for EventSchemasRegistryPolicy. See
-- 'eventSchemasRegistryPolicy' for a more convenient constructor.
data EventSchemasRegistryPolicy =
  EventSchemasRegistryPolicy
  { _eventSchemasRegistryPolicyPolicy :: Object
  , _eventSchemasRegistryPolicyRegistryName :: Val Text
  , _eventSchemasRegistryPolicyRevisionId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EventSchemasRegistryPolicy where
  toResourceProperties EventSchemasRegistryPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EventSchemas::RegistryPolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Policy",) . toJSON) _eventSchemasRegistryPolicyPolicy
        , (Just . ("RegistryName",) . toJSON) _eventSchemasRegistryPolicyRegistryName
        , fmap (("RevisionId",) . toJSON) _eventSchemasRegistryPolicyRevisionId
        ]
    }

-- | Constructor for 'EventSchemasRegistryPolicy' containing required fields
-- as arguments.
eventSchemasRegistryPolicy
  :: Object -- ^ 'esrpPolicy'
  -> Val Text -- ^ 'esrpRegistryName'
  -> EventSchemasRegistryPolicy
eventSchemasRegistryPolicy policyarg registryNamearg =
  EventSchemasRegistryPolicy
  { _eventSchemasRegistryPolicyPolicy = policyarg
  , _eventSchemasRegistryPolicyRegistryName = registryNamearg
  , _eventSchemasRegistryPolicyRevisionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-policy
esrpPolicy :: Lens' EventSchemasRegistryPolicy Object
esrpPolicy = lens _eventSchemasRegistryPolicyPolicy (\s a -> s { _eventSchemasRegistryPolicyPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-registryname
esrpRegistryName :: Lens' EventSchemasRegistryPolicy (Val Text)
esrpRegistryName = lens _eventSchemasRegistryPolicyRegistryName (\s a -> s { _eventSchemasRegistryPolicyRegistryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-revisionid
esrpRevisionId :: Lens' EventSchemasRegistryPolicy (Maybe (Val Text))
esrpRevisionId = lens _eventSchemasRegistryPolicyRevisionId (\s a -> s { _eventSchemasRegistryPolicyRevisionId = a })
