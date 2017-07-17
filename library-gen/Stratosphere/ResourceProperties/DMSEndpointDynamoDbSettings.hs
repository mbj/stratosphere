{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html

module Stratosphere.ResourceProperties.DMSEndpointDynamoDbSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("ServiceAccessRoleArn" .=) <$> _dMSEndpointDynamoDbSettingsServiceAccessRoleArn
    ]

instance FromJSON DMSEndpointDynamoDbSettings where
  parseJSON (Object obj) =
    DMSEndpointDynamoDbSettings <$>
      obj .:? "ServiceAccessRoleArn"
  parseJSON _ = mempty

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
