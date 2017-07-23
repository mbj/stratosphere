{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html

module Stratosphere.ResourceProperties.ConfigConfigRuleSource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ConfigConfigRuleSourceDetail

-- | Full data type definition for ConfigConfigRuleSource. See
-- 'configConfigRuleSource' for a more convenient constructor.
data ConfigConfigRuleSource =
  ConfigConfigRuleSource
  { _configConfigRuleSourceOwner :: Val Text
  , _configConfigRuleSourceSourceDetails :: Maybe [ConfigConfigRuleSourceDetail]
  , _configConfigRuleSourceSourceIdentifier :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigConfigRuleSource where
  toJSON ConfigConfigRuleSource{..} =
    object $
    catMaybes
    [ (Just . ("Owner",) . toJSON) _configConfigRuleSourceOwner
    , fmap (("SourceDetails",) . toJSON) _configConfigRuleSourceSourceDetails
    , (Just . ("SourceIdentifier",) . toJSON) _configConfigRuleSourceSourceIdentifier
    ]

instance FromJSON ConfigConfigRuleSource where
  parseJSON (Object obj) =
    ConfigConfigRuleSource <$>
      (obj .: "Owner") <*>
      (obj .:? "SourceDetails") <*>
      (obj .: "SourceIdentifier")
  parseJSON _ = mempty

-- | Constructor for 'ConfigConfigRuleSource' containing required fields as
-- arguments.
configConfigRuleSource
  :: Val Text -- ^ 'ccrsOwner'
  -> Val Text -- ^ 'ccrsSourceIdentifier'
  -> ConfigConfigRuleSource
configConfigRuleSource ownerarg sourceIdentifierarg =
  ConfigConfigRuleSource
  { _configConfigRuleSourceOwner = ownerarg
  , _configConfigRuleSourceSourceDetails = Nothing
  , _configConfigRuleSourceSourceIdentifier = sourceIdentifierarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-owner
ccrsOwner :: Lens' ConfigConfigRuleSource (Val Text)
ccrsOwner = lens _configConfigRuleSourceOwner (\s a -> s { _configConfigRuleSourceOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourcedetails
ccrsSourceDetails :: Lens' ConfigConfigRuleSource (Maybe [ConfigConfigRuleSourceDetail])
ccrsSourceDetails = lens _configConfigRuleSourceSourceDetails (\s a -> s { _configConfigRuleSourceSourceDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourceidentifier
ccrsSourceIdentifier :: Lens' ConfigConfigRuleSource (Val Text)
ccrsSourceIdentifier = lens _configConfigRuleSourceSourceIdentifier (\s a -> s { _configConfigRuleSourceSourceIdentifier = a })
