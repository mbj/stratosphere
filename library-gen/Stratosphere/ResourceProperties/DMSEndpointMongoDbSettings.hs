{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html

module Stratosphere.ResourceProperties.DMSEndpointMongoDbSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DMSEndpointMongoDbSettings. See
-- 'dmsEndpointMongoDbSettings' for a more convenient constructor.
data DMSEndpointMongoDbSettings =
  DMSEndpointMongoDbSettings
  { _dMSEndpointMongoDbSettingsAuthMechanism :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsAuthSource :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsAuthType :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsDatabaseName :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsDocsToInvestigate :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsExtractDocId :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsNestingLevel :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsPassword :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsPort :: Maybe (Val Integer')
  , _dMSEndpointMongoDbSettingsServerName :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettingsUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointMongoDbSettings where
  toJSON DMSEndpointMongoDbSettings{..} =
    object $
    catMaybes
    [ ("AuthMechanism" .=) <$> _dMSEndpointMongoDbSettingsAuthMechanism
    , ("AuthSource" .=) <$> _dMSEndpointMongoDbSettingsAuthSource
    , ("AuthType" .=) <$> _dMSEndpointMongoDbSettingsAuthType
    , ("DatabaseName" .=) <$> _dMSEndpointMongoDbSettingsDatabaseName
    , ("DocsToInvestigate" .=) <$> _dMSEndpointMongoDbSettingsDocsToInvestigate
    , ("ExtractDocId" .=) <$> _dMSEndpointMongoDbSettingsExtractDocId
    , ("NestingLevel" .=) <$> _dMSEndpointMongoDbSettingsNestingLevel
    , ("Password" .=) <$> _dMSEndpointMongoDbSettingsPassword
    , ("Port" .=) <$> _dMSEndpointMongoDbSettingsPort
    , ("ServerName" .=) <$> _dMSEndpointMongoDbSettingsServerName
    , ("Username" .=) <$> _dMSEndpointMongoDbSettingsUsername
    ]

instance FromJSON DMSEndpointMongoDbSettings where
  parseJSON (Object obj) =
    DMSEndpointMongoDbSettings <$>
      obj .:? "AuthMechanism" <*>
      obj .:? "AuthSource" <*>
      obj .:? "AuthType" <*>
      obj .:? "DatabaseName" <*>
      obj .:? "DocsToInvestigate" <*>
      obj .:? "ExtractDocId" <*>
      obj .:? "NestingLevel" <*>
      obj .:? "Password" <*>
      obj .:? "Port" <*>
      obj .:? "ServerName" <*>
      obj .:? "Username"
  parseJSON _ = mempty

-- | Constructor for 'DMSEndpointMongoDbSettings' containing required fields
-- as arguments.
dmsEndpointMongoDbSettings
  :: DMSEndpointMongoDbSettings
dmsEndpointMongoDbSettings  =
  DMSEndpointMongoDbSettings
  { _dMSEndpointMongoDbSettingsAuthMechanism = Nothing
  , _dMSEndpointMongoDbSettingsAuthSource = Nothing
  , _dMSEndpointMongoDbSettingsAuthType = Nothing
  , _dMSEndpointMongoDbSettingsDatabaseName = Nothing
  , _dMSEndpointMongoDbSettingsDocsToInvestigate = Nothing
  , _dMSEndpointMongoDbSettingsExtractDocId = Nothing
  , _dMSEndpointMongoDbSettingsNestingLevel = Nothing
  , _dMSEndpointMongoDbSettingsPassword = Nothing
  , _dMSEndpointMongoDbSettingsPort = Nothing
  , _dMSEndpointMongoDbSettingsServerName = Nothing
  , _dMSEndpointMongoDbSettingsUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authmechanism
dmsemdsAuthMechanism :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsAuthMechanism = lens _dMSEndpointMongoDbSettingsAuthMechanism (\s a -> s { _dMSEndpointMongoDbSettingsAuthMechanism = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authsource
dmsemdsAuthSource :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsAuthSource = lens _dMSEndpointMongoDbSettingsAuthSource (\s a -> s { _dMSEndpointMongoDbSettingsAuthSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authtype
dmsemdsAuthType :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsAuthType = lens _dMSEndpointMongoDbSettingsAuthType (\s a -> s { _dMSEndpointMongoDbSettingsAuthType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-databasename
dmsemdsDatabaseName :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsDatabaseName = lens _dMSEndpointMongoDbSettingsDatabaseName (\s a -> s { _dMSEndpointMongoDbSettingsDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-docstoinvestigate
dmsemdsDocsToInvestigate :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsDocsToInvestigate = lens _dMSEndpointMongoDbSettingsDocsToInvestigate (\s a -> s { _dMSEndpointMongoDbSettingsDocsToInvestigate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-extractdocid
dmsemdsExtractDocId :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsExtractDocId = lens _dMSEndpointMongoDbSettingsExtractDocId (\s a -> s { _dMSEndpointMongoDbSettingsExtractDocId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-nestinglevel
dmsemdsNestingLevel :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsNestingLevel = lens _dMSEndpointMongoDbSettingsNestingLevel (\s a -> s { _dMSEndpointMongoDbSettingsNestingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-password
dmsemdsPassword :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsPassword = lens _dMSEndpointMongoDbSettingsPassword (\s a -> s { _dMSEndpointMongoDbSettingsPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-port
dmsemdsPort :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Integer'))
dmsemdsPort = lens _dMSEndpointMongoDbSettingsPort (\s a -> s { _dMSEndpointMongoDbSettingsPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-servername
dmsemdsServerName :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsServerName = lens _dMSEndpointMongoDbSettingsServerName (\s a -> s { _dMSEndpointMongoDbSettingsServerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-username
dmsemdsUsername :: Lens' DMSEndpointMongoDbSettings (Maybe (Val Text))
dmsemdsUsername = lens _dMSEndpointMongoDbSettingsUsername (\s a -> s { _dMSEndpointMongoDbSettingsUsername = a })
