
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html

module Stratosphere.ResourceProperties.TransferUserHomeDirectoryMapEntry where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for TransferUserHomeDirectoryMapEntry. See
-- 'transferUserHomeDirectoryMapEntry' for a more convenient constructor.
data TransferUserHomeDirectoryMapEntry =
  TransferUserHomeDirectoryMapEntry
  { _transferUserHomeDirectoryMapEntryEntry :: Val Text
  , _transferUserHomeDirectoryMapEntryTarget :: Val Text
  } deriving (Show, Eq)

instance ToJSON TransferUserHomeDirectoryMapEntry where
  toJSON TransferUserHomeDirectoryMapEntry{..} =
    object $
    catMaybes
    [ (Just . ("Entry",) . toJSON) _transferUserHomeDirectoryMapEntryEntry
    , (Just . ("Target",) . toJSON) _transferUserHomeDirectoryMapEntryTarget
    ]

-- | Constructor for 'TransferUserHomeDirectoryMapEntry' containing required
-- fields as arguments.
transferUserHomeDirectoryMapEntry
  :: Val Text -- ^ 'tuhdmeEntry'
  -> Val Text -- ^ 'tuhdmeTarget'
  -> TransferUserHomeDirectoryMapEntry
transferUserHomeDirectoryMapEntry entryarg targetarg =
  TransferUserHomeDirectoryMapEntry
  { _transferUserHomeDirectoryMapEntryEntry = entryarg
  , _transferUserHomeDirectoryMapEntryTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html#cfn-transfer-user-homedirectorymapentry-entry
tuhdmeEntry :: Lens' TransferUserHomeDirectoryMapEntry (Val Text)
tuhdmeEntry = lens _transferUserHomeDirectoryMapEntryEntry (\s a -> s { _transferUserHomeDirectoryMapEntryEntry = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-homedirectorymapentry.html#cfn-transfer-user-homedirectorymapentry-target
tuhdmeTarget :: Lens' TransferUserHomeDirectoryMapEntry (Val Text)
tuhdmeTarget = lens _transferUserHomeDirectoryMapEntryTarget (\s a -> s { _transferUserHomeDirectoryMapEntryTarget = a })
