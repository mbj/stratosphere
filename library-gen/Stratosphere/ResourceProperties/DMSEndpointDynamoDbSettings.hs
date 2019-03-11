{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html

module Stratosphere.ResourceProperties.DMSEndpointDynamoDbSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointDynamoDbSettings. See
-- 'dmsEndpointDynamoDbSettings' for a more convenient constructor.
data DMSEndpointDynamoDbSettings =
  DMSEndpointDynamoDbSettings
  { _dMSEndpointDynamoDbSettingsServiceAccessRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointDynamoDbSettings where
  toJSON DMSEndpointDynamoDbSettings{..} =
    object $
    catMaybes
    [ fmap (("ServiceAccessRoleArn",) . toJSON) _dMSEndpointDynamoDbSettingsServiceAccessRoleArn
    ]

-- | Constructor for 'DMSEndpointDynamoDbSettings' containing required fields
-- as arguments.
dmsEndpointDynamoDbSettings
  :: DMSEndpointDynamoDbSettings
dmsEndpointDynamoDbSettings  =
  DMSEndpointDynamoDbSettings
  { _dMSEndpointDynamoDbSettingsServiceAccessRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html#cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn
dmseddsServiceAccessRoleArn :: Lens' DMSEndpointDynamoDbSettings (Maybe (Val Text))
dmseddsServiceAccessRoleArn = lens _dMSEndpointDynamoDbSettingsServiceAccessRoleArn (\s a -> s { _dMSEndpointDynamoDbSettingsServiceAccessRoleArn = a })
