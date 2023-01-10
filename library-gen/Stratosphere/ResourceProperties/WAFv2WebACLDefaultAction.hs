
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html

module Stratosphere.ResourceProperties.WAFv2WebACLDefaultAction where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLDefaultAction. See
-- 'waFv2WebACLDefaultAction' for a more convenient constructor.
data WAFv2WebACLDefaultAction =
  WAFv2WebACLDefaultAction
  { _wAFv2WebACLDefaultActionAllow :: Maybe Object
  , _wAFv2WebACLDefaultActionBlock :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLDefaultAction where
  toJSON WAFv2WebACLDefaultAction{..} =
    object $
    catMaybes
    [ fmap (("Allow",) . toJSON) _wAFv2WebACLDefaultActionAllow
    , fmap (("Block",) . toJSON) _wAFv2WebACLDefaultActionBlock
    ]

-- | Constructor for 'WAFv2WebACLDefaultAction' containing required fields as
-- arguments.
waFv2WebACLDefaultAction
  :: WAFv2WebACLDefaultAction
waFv2WebACLDefaultAction  =
  WAFv2WebACLDefaultAction
  { _wAFv2WebACLDefaultActionAllow = Nothing
  , _wAFv2WebACLDefaultActionBlock = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-allow
wafwacldaAllow :: Lens' WAFv2WebACLDefaultAction (Maybe Object)
wafwacldaAllow = lens _wAFv2WebACLDefaultActionAllow (\s a -> s { _wAFv2WebACLDefaultActionAllow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-block
wafwacldaBlock :: Lens' WAFv2WebACLDefaultAction (Maybe Object)
wafwacldaBlock = lens _wAFv2WebACLDefaultActionBlock (\s a -> s { _wAFv2WebACLDefaultActionBlock = a })
