
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html

module Stratosphere.ResourceProperties.FMSPolicyResourceTag where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for FMSPolicyResourceTag. See
-- 'fmsPolicyResourceTag' for a more convenient constructor.
data FMSPolicyResourceTag =
  FMSPolicyResourceTag
  { _fMSPolicyResourceTagKey :: Val Text
  , _fMSPolicyResourceTagValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON FMSPolicyResourceTag where
  toJSON FMSPolicyResourceTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _fMSPolicyResourceTagKey
    , fmap (("Value",) . toJSON) _fMSPolicyResourceTagValue
    ]

-- | Constructor for 'FMSPolicyResourceTag' containing required fields as
-- arguments.
fmsPolicyResourceTag
  :: Val Text -- ^ 'fmsprtKey'
  -> FMSPolicyResourceTag
fmsPolicyResourceTag keyarg =
  FMSPolicyResourceTag
  { _fMSPolicyResourceTagKey = keyarg
  , _fMSPolicyResourceTagValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-key
fmsprtKey :: Lens' FMSPolicyResourceTag (Val Text)
fmsprtKey = lens _fMSPolicyResourceTagKey (\s a -> s { _fMSPolicyResourceTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-value
fmsprtValue :: Lens' FMSPolicyResourceTag (Maybe (Val Text))
fmsprtValue = lens _fMSPolicyResourceTagValue (\s a -> s { _fMSPolicyResourceTagValue = a })
