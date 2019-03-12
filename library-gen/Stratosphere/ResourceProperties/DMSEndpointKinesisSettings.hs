{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html

module Stratosphere.ResourceProperties.DMSEndpointKinesisSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointKinesisSettings. See
-- 'dmsEndpointKinesisSettings' for a more convenient constructor.
data DMSEndpointKinesisSettings =
  DMSEndpointKinesisSettings
  { _dMSEndpointKinesisSettingsMessageFormat :: Maybe (Val Text)
  , _dMSEndpointKinesisSettingsServiceAccessRoleArn :: Maybe (Val Text)
  , _dMSEndpointKinesisSettingsStreamArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointKinesisSettings where
  toJSON DMSEndpointKinesisSettings{..} =
    object $
    catMaybes
    [ fmap (("MessageFormat",) . toJSON) _dMSEndpointKinesisSettingsMessageFormat
    , fmap (("ServiceAccessRoleArn",) . toJSON) _dMSEndpointKinesisSettingsServiceAccessRoleArn
    , fmap (("StreamArn",) . toJSON) _dMSEndpointKinesisSettingsStreamArn
    ]

-- | Constructor for 'DMSEndpointKinesisSettings' containing required fields
-- as arguments.
dmsEndpointKinesisSettings
  :: DMSEndpointKinesisSettings
dmsEndpointKinesisSettings  =
  DMSEndpointKinesisSettings
  { _dMSEndpointKinesisSettingsMessageFormat = Nothing
  , _dMSEndpointKinesisSettingsServiceAccessRoleArn = Nothing
  , _dMSEndpointKinesisSettingsStreamArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-messageformat
dmseksMessageFormat :: Lens' DMSEndpointKinesisSettings (Maybe (Val Text))
dmseksMessageFormat = lens _dMSEndpointKinesisSettingsMessageFormat (\s a -> s { _dMSEndpointKinesisSettingsMessageFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-serviceaccessrolearn
dmseksServiceAccessRoleArn :: Lens' DMSEndpointKinesisSettings (Maybe (Val Text))
dmseksServiceAccessRoleArn = lens _dMSEndpointKinesisSettingsServiceAccessRoleArn (\s a -> s { _dMSEndpointKinesisSettingsServiceAccessRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-streamarn
dmseksStreamArn :: Lens' DMSEndpointKinesisSettings (Maybe (Val Text))
dmseksStreamArn = lens _dMSEndpointKinesisSettingsStreamArn (\s a -> s { _dMSEndpointKinesisSettingsStreamArn = a })
