
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html

module Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLTextTransformation. See
-- 'waFv2WebACLTextTransformation' for a more convenient constructor.
data WAFv2WebACLTextTransformation =
  WAFv2WebACLTextTransformation
  { _wAFv2WebACLTextTransformationPriority :: Val Integer
  , _wAFv2WebACLTextTransformationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLTextTransformation where
  toJSON WAFv2WebACLTextTransformation{..} =
    object $
    catMaybes
    [ (Just . ("Priority",) . toJSON) _wAFv2WebACLTextTransformationPriority
    , (Just . ("Type",) . toJSON) _wAFv2WebACLTextTransformationType
    ]

-- | Constructor for 'WAFv2WebACLTextTransformation' containing required
-- fields as arguments.
waFv2WebACLTextTransformation
  :: Val Integer -- ^ 'wafwaclttPriority'
  -> Val Text -- ^ 'wafwaclttType'
  -> WAFv2WebACLTextTransformation
waFv2WebACLTextTransformation priorityarg typearg =
  WAFv2WebACLTextTransformation
  { _wAFv2WebACLTextTransformationPriority = priorityarg
  , _wAFv2WebACLTextTransformationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-priority
wafwaclttPriority :: Lens' WAFv2WebACLTextTransformation (Val Integer)
wafwaclttPriority = lens _wAFv2WebACLTextTransformationPriority (\s a -> s { _wAFv2WebACLTextTransformationPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-type
wafwaclttType :: Lens' WAFv2WebACLTextTransformation (Val Text)
wafwaclttType = lens _wAFv2WebACLTextTransformationType (\s a -> s { _wAFv2WebACLTextTransformationType = a })
