{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html

module Stratosphere.ResourceProperties.S3BucketRedirectRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketRedirectRule. See
-- | 's3BucketRedirectRule' for a more convenient constructor.
data S3BucketRedirectRule =
  S3BucketRedirectRule
  { _s3BucketRedirectRuleHostName :: Maybe (Val Text)
  , _s3BucketRedirectRuleHttpRedirectCode :: Maybe (Val Text)
  , _s3BucketRedirectRuleProtocol :: Maybe (Val Text)
  , _s3BucketRedirectRuleReplaceKeyPrefixWith :: Maybe (Val Text)
  , _s3BucketRedirectRuleReplaceKeyWith :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3BucketRedirectRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON S3BucketRedirectRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'S3BucketRedirectRule' containing required fields as
-- | arguments.
s3BucketRedirectRule
  :: S3BucketRedirectRule
s3BucketRedirectRule  =
  S3BucketRedirectRule
  { _s3BucketRedirectRuleHostName = Nothing
  , _s3BucketRedirectRuleHttpRedirectCode = Nothing
  , _s3BucketRedirectRuleProtocol = Nothing
  , _s3BucketRedirectRuleReplaceKeyPrefixWith = Nothing
  , _s3BucketRedirectRuleReplaceKeyWith = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-hostname
sbrrHostName :: Lens' S3BucketRedirectRule (Maybe (Val Text))
sbrrHostName = lens _s3BucketRedirectRuleHostName (\s a -> s { _s3BucketRedirectRuleHostName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-httpredirectcode
sbrrHttpRedirectCode :: Lens' S3BucketRedirectRule (Maybe (Val Text))
sbrrHttpRedirectCode = lens _s3BucketRedirectRuleHttpRedirectCode (\s a -> s { _s3BucketRedirectRuleHttpRedirectCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-protocol
sbrrProtocol :: Lens' S3BucketRedirectRule (Maybe (Val Text))
sbrrProtocol = lens _s3BucketRedirectRuleProtocol (\s a -> s { _s3BucketRedirectRuleProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeyprefixwith
sbrrReplaceKeyPrefixWith :: Lens' S3BucketRedirectRule (Maybe (Val Text))
sbrrReplaceKeyPrefixWith = lens _s3BucketRedirectRuleReplaceKeyPrefixWith (\s a -> s { _s3BucketRedirectRuleReplaceKeyPrefixWith = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeywith
sbrrReplaceKeyWith :: Lens' S3BucketRedirectRule (Maybe (Val Text))
sbrrReplaceKeyWith = lens _s3BucketRedirectRuleReplaceKeyWith (\s a -> s { _s3BucketRedirectRuleReplaceKeyWith = a })
