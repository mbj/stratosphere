
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html

module Stratosphere.ResourceProperties.WAFv2WebACLOverrideAction where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLOverrideAction. See
-- 'waFv2WebACLOverrideAction' for a more convenient constructor.
data WAFv2WebACLOverrideAction =
  WAFv2WebACLOverrideAction
  { _wAFv2WebACLOverrideActionCount :: Maybe Object
  , _wAFv2WebACLOverrideActionNone :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLOverrideAction where
  toJSON WAFv2WebACLOverrideAction{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _wAFv2WebACLOverrideActionCount
    , fmap (("None",) . toJSON) _wAFv2WebACLOverrideActionNone
    ]

-- | Constructor for 'WAFv2WebACLOverrideAction' containing required fields as
-- arguments.
waFv2WebACLOverrideAction
  :: WAFv2WebACLOverrideAction
waFv2WebACLOverrideAction  =
  WAFv2WebACLOverrideAction
  { _wAFv2WebACLOverrideActionCount = Nothing
  , _wAFv2WebACLOverrideActionNone = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-count
wafwacloaCount :: Lens' WAFv2WebACLOverrideAction (Maybe Object)
wafwacloaCount = lens _wAFv2WebACLOverrideActionCount (\s a -> s { _wAFv2WebACLOverrideActionCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-none
wafwacloaNone :: Lens' WAFv2WebACLOverrideAction (Maybe Object)
wafwacloaNone = lens _wAFv2WebACLOverrideActionNone (\s a -> s { _wAFv2WebACLOverrideActionNone = a })
