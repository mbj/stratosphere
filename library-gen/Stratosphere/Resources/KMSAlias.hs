{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html

module Stratosphere.Resources.KMSAlias where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KMSAlias. See 'kmsAlias' for a more
-- | convenient constructor.
data KMSAlias =
  KMSAlias
  { _kMSAliasAliasName :: Val Text
  , _kMSAliasTargetKeyId :: Val Text
  } deriving (Show, Generic)

instance ToJSON KMSAlias where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON KMSAlias where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'KMSAlias' containing required fields as arguments.
kmsAlias
  :: Val Text -- ^ 'kmsaAliasName'
  -> Val Text -- ^ 'kmsaTargetKeyId'
  -> KMSAlias
kmsAlias aliasNamearg targetKeyIdarg =
  KMSAlias
  { _kMSAliasAliasName = aliasNamearg
  , _kMSAliasTargetKeyId = targetKeyIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-aliasname
kmsaAliasName :: Lens' KMSAlias (Val Text)
kmsaAliasName = lens _kMSAliasAliasName (\s a -> s { _kMSAliasAliasName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-targetkeyid
kmsaTargetKeyId :: Lens' KMSAlias (Val Text)
kmsaTargetKeyId = lens _kMSAliasTargetKeyId (\s a -> s { _kMSAliasTargetKeyId = a })
