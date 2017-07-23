{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html

module Stratosphere.Resources.KMSAlias where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for KMSAlias. See 'kmsAlias' for a more
-- convenient constructor.
data KMSAlias =
  KMSAlias
  { _kMSAliasAliasName :: Val Text
  , _kMSAliasTargetKeyId :: Val Text
  } deriving (Show, Eq)

instance ToJSON KMSAlias where
  toJSON KMSAlias{..} =
    object $
    catMaybes
    [ (Just . ("AliasName",) . toJSON) _kMSAliasAliasName
    , (Just . ("TargetKeyId",) . toJSON) _kMSAliasTargetKeyId
    ]

instance FromJSON KMSAlias where
  parseJSON (Object obj) =
    KMSAlias <$>
      (obj .: "AliasName") <*>
      (obj .: "TargetKeyId")
  parseJSON _ = mempty

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
