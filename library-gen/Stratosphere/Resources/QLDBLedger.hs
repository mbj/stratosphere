{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html

module Stratosphere.Resources.QLDBLedger where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for QLDBLedger. See 'qldbLedger' for a more
-- convenient constructor.
data QLDBLedger =
  QLDBLedger
  { _qLDBLedgerDeletionProtection :: Maybe (Val Bool)
  , _qLDBLedgerName :: Maybe (Val Text)
  , _qLDBLedgerPermissionsMode :: Val Text
  , _qLDBLedgerTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties QLDBLedger where
  toResourceProperties QLDBLedger{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::QLDB::Ledger"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeletionProtection",) . toJSON) _qLDBLedgerDeletionProtection
        , fmap (("Name",) . toJSON) _qLDBLedgerName
        , (Just . ("PermissionsMode",) . toJSON) _qLDBLedgerPermissionsMode
        , fmap (("Tags",) . toJSON) _qLDBLedgerTags
        ]
    }

-- | Constructor for 'QLDBLedger' containing required fields as arguments.
qldbLedger
  :: Val Text -- ^ 'qldblPermissionsMode'
  -> QLDBLedger
qldbLedger permissionsModearg =
  QLDBLedger
  { _qLDBLedgerDeletionProtection = Nothing
  , _qLDBLedgerName = Nothing
  , _qLDBLedgerPermissionsMode = permissionsModearg
  , _qLDBLedgerTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-deletionprotection
qldblDeletionProtection :: Lens' QLDBLedger (Maybe (Val Bool))
qldblDeletionProtection = lens _qLDBLedgerDeletionProtection (\s a -> s { _qLDBLedgerDeletionProtection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-name
qldblName :: Lens' QLDBLedger (Maybe (Val Text))
qldblName = lens _qLDBLedgerName (\s a -> s { _qLDBLedgerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-permissionsmode
qldblPermissionsMode :: Lens' QLDBLedger (Val Text)
qldblPermissionsMode = lens _qLDBLedgerPermissionsMode (\s a -> s { _qLDBLedgerPermissionsMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-tags
qldblTags :: Lens' QLDBLedger (Maybe [Tag])
qldblTags = lens _qLDBLedgerTags (\s a -> s { _qLDBLedgerTags = a })
