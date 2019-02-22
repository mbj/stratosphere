{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-tagentry.html

module Stratosphere.ResourceProperties.FSxFileSystemTagEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for FSxFileSystemTagEntry. See
-- 'fSxFileSystemTagEntry' for a more convenient constructor.
data FSxFileSystemTagEntry =
  FSxFileSystemTagEntry
  { _fSxFileSystemTagEntryKey :: Val Text
  , _fSxFileSystemTagEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON FSxFileSystemTagEntry where
  toJSON FSxFileSystemTagEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _fSxFileSystemTagEntryKey
    , (Just . ("Value",) . toJSON) _fSxFileSystemTagEntryValue
    ]

instance FromJSON FSxFileSystemTagEntry where
  parseJSON (Object obj) =
    FSxFileSystemTagEntry <$>
      (obj .: "Key") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'FSxFileSystemTagEntry' containing required fields as
-- arguments.
fSxFileSystemTagEntry
  :: Val Text -- ^ 'fsfsteKey'
  -> Val Text -- ^ 'fsfsteValue'
  -> FSxFileSystemTagEntry
fSxFileSystemTagEntry keyarg valuearg =
  FSxFileSystemTagEntry
  { _fSxFileSystemTagEntryKey = keyarg
  , _fSxFileSystemTagEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-tagentry.html#cfn-fsx-filesystem-tagentry-key
fsfsteKey :: Lens' FSxFileSystemTagEntry (Val Text)
fsfsteKey = lens _fSxFileSystemTagEntryKey (\s a -> s { _fSxFileSystemTagEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-tagentry.html#cfn-fsx-filesystem-tagentry-value
fsfsteValue :: Lens' FSxFileSystemTagEntry (Val Text)
fsfsteValue = lens _fSxFileSystemTagEntryValue (\s a -> s { _fSxFileSystemTagEntryValue = a })
