
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-accesspointtag.html

module Stratosphere.ResourceProperties.EFSAccessPointAccessPointTag where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EFSAccessPointAccessPointTag. See
-- 'efsAccessPointAccessPointTag' for a more convenient constructor.
data EFSAccessPointAccessPointTag =
  EFSAccessPointAccessPointTag
  { _eFSAccessPointAccessPointTagKey :: Maybe (Val Text)
  , _eFSAccessPointAccessPointTagValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EFSAccessPointAccessPointTag where
  toJSON EFSAccessPointAccessPointTag{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _eFSAccessPointAccessPointTagKey
    , fmap (("Value",) . toJSON) _eFSAccessPointAccessPointTagValue
    ]

-- | Constructor for 'EFSAccessPointAccessPointTag' containing required fields
-- as arguments.
efsAccessPointAccessPointTag
  :: EFSAccessPointAccessPointTag
efsAccessPointAccessPointTag  =
  EFSAccessPointAccessPointTag
  { _eFSAccessPointAccessPointTagKey = Nothing
  , _eFSAccessPointAccessPointTagValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-accesspointtag.html#cfn-efs-accesspoint-accesspointtag-key
efsapaptKey :: Lens' EFSAccessPointAccessPointTag (Maybe (Val Text))
efsapaptKey = lens _eFSAccessPointAccessPointTagKey (\s a -> s { _eFSAccessPointAccessPointTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-accesspointtag.html#cfn-efs-accesspoint-accesspointtag-value
efsapaptValue :: Lens' EFSAccessPointAccessPointTag (Maybe (Val Text))
efsapaptValue = lens _eFSAccessPointAccessPointTagValue (\s a -> s { _eFSAccessPointAccessPointTagValue = a })
