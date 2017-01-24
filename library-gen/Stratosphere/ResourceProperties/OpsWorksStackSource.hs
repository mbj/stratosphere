{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html

module Stratosphere.ResourceProperties.OpsWorksStackSource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksStackSource. See
-- | 'opsWorksStackSource' for a more convenient constructor.
data OpsWorksStackSource =
  OpsWorksStackSource
  { _opsWorksStackSourcePassword :: Maybe (Val Text)
  , _opsWorksStackSourceRevision :: Maybe (Val Text)
  , _opsWorksStackSourceSshKey :: Maybe (Val Text)
  , _opsWorksStackSourceType :: Maybe (Val Text)
  , _opsWorksStackSourceUrl :: Maybe (Val Text)
  , _opsWorksStackSourceUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksStackSource where
  toJSON OpsWorksStackSource{..} =
    object
    [ "Password" .= _opsWorksStackSourcePassword
    , "Revision" .= _opsWorksStackSourceRevision
    , "SshKey" .= _opsWorksStackSourceSshKey
    , "Type" .= _opsWorksStackSourceType
    , "Url" .= _opsWorksStackSourceUrl
    , "Username" .= _opsWorksStackSourceUsername
    ]

instance FromJSON OpsWorksStackSource where
  parseJSON (Object obj) =
    OpsWorksStackSource <$>
      obj .: "Password" <*>
      obj .: "Revision" <*>
      obj .: "SshKey" <*>
      obj .: "Type" <*>
      obj .: "Url" <*>
      obj .: "Username"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksStackSource' containing required fields as
-- | arguments.
opsWorksStackSource
  :: OpsWorksStackSource
opsWorksStackSource  =
  OpsWorksStackSource
  { _opsWorksStackSourcePassword = Nothing
  , _opsWorksStackSourceRevision = Nothing
  , _opsWorksStackSourceSshKey = Nothing
  , _opsWorksStackSourceType = Nothing
  , _opsWorksStackSourceUrl = Nothing
  , _opsWorksStackSourceUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-password
owssPassword :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssPassword = lens _opsWorksStackSourcePassword (\s a -> s { _opsWorksStackSourcePassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
owssRevision :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssRevision = lens _opsWorksStackSourceRevision (\s a -> s { _opsWorksStackSourceRevision = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
owssSshKey :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssSshKey = lens _opsWorksStackSourceSshKey (\s a -> s { _opsWorksStackSourceSshKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
owssType :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssType = lens _opsWorksStackSourceType (\s a -> s { _opsWorksStackSourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
owssUrl :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssUrl = lens _opsWorksStackSourceUrl (\s a -> s { _opsWorksStackSourceUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
owssUsername :: Lens' OpsWorksStackSource (Maybe (Val Text))
owssUsername = lens _opsWorksStackSourceUsername (\s a -> s { _opsWorksStackSourceUsername = a })
