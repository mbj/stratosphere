{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformations.html

module Stratosphere.ResourceProperties.WAFv2WebACLTextTransformations where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for WAFv2WebACLTextTransformations. See
-- 'waFv2WebACLTextTransformations' for a more convenient constructor.
data WAFv2WebACLTextTransformations =
  WAFv2WebACLTextTransformations
  { _wAFv2WebACLTextTransformationsTextTransformations :: Maybe [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLTextTransformations where
  toJSON WAFv2WebACLTextTransformations{..} =
    object $
    catMaybes
    [ fmap (("TextTransformations",) . toJSON) _wAFv2WebACLTextTransformationsTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLTextTransformations' containing required
-- fields as arguments.
waFv2WebACLTextTransformations
  :: WAFv2WebACLTextTransformations
waFv2WebACLTextTransformations  =
  WAFv2WebACLTextTransformations
  { _wAFv2WebACLTextTransformationsTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformations.html#cfn-wafv2-webacl-texttransformations-texttransformations
wafwaclttTextTransformations :: Lens' WAFv2WebACLTextTransformations (Maybe [WAFv2WebACLTextTransformation])
wafwaclttTextTransformations = lens _wAFv2WebACLTextTransformationsTextTransformations (\s a -> s { _wAFv2WebACLTextTransformationsTextTransformations = a })
