{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html

module Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLTextTransformation. See
-- 'waFv2WebACLTextTransformation' for a more convenient constructor.
data WAFv2WebACLTextTransformation =
  WAFv2WebACLTextTransformation
  { _wAFv2WebACLTextTransformationPriority :: Maybe (Val Integer)
  , _wAFv2WebACLTextTransformationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLTextTransformation where
  toJSON WAFv2WebACLTextTransformation{..} =
    object $
    catMaybes
    [ fmap (("Priority",) . toJSON) _wAFv2WebACLTextTransformationPriority
    , fmap (("Type",) . toJSON) _wAFv2WebACLTextTransformationType
    ]

-- | Constructor for 'WAFv2WebACLTextTransformation' containing required
-- fields as arguments.
waFv2WebACLTextTransformation
  :: WAFv2WebACLTextTransformation
waFv2WebACLTextTransformation  =
  WAFv2WebACLTextTransformation
  { _wAFv2WebACLTextTransformationPriority = Nothing
  , _wAFv2WebACLTextTransformationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-priority
wafwaclttPriority :: Lens' WAFv2WebACLTextTransformation (Maybe (Val Integer))
wafwaclttPriority = lens _wAFv2WebACLTextTransformationPriority (\s a -> s { _wAFv2WebACLTextTransformationPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-type
wafwaclttType :: Lens' WAFv2WebACLTextTransformation (Maybe (Val Text))
wafwaclttType = lens _wAFv2WebACLTextTransformationType (\s a -> s { _wAFv2WebACLTextTransformationType = a })
