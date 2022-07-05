{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html

module Stratosphere.Resources.WAFv2WebACLAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLAssociation. See
-- 'waFv2WebACLAssociation' for a more convenient constructor.
data WAFv2WebACLAssociation =
  WAFv2WebACLAssociation
  { _wAFv2WebACLAssociationResourceArn :: Val Text
  , _wAFv2WebACLAssociationWebACLArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2WebACLAssociation where
  toResourceProperties WAFv2WebACLAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::WebACLAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ResourceArn",) . toJSON) _wAFv2WebACLAssociationResourceArn
        , (Just . ("WebACLArn",) . toJSON) _wAFv2WebACLAssociationWebACLArn
        ]
    }

-- | Constructor for 'WAFv2WebACLAssociation' containing required fields as
-- arguments.
waFv2WebACLAssociation
  :: Val Text -- ^ 'wafwaclaResourceArn'
  -> Val Text -- ^ 'wafwaclaWebACLArn'
  -> WAFv2WebACLAssociation
waFv2WebACLAssociation resourceArnarg webACLArnarg =
  WAFv2WebACLAssociation
  { _wAFv2WebACLAssociationResourceArn = resourceArnarg
  , _wAFv2WebACLAssociationWebACLArn = webACLArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html#cfn-wafv2-webaclassociation-resourcearn
wafwaclaResourceArn :: Lens' WAFv2WebACLAssociation (Val Text)
wafwaclaResourceArn = lens _wAFv2WebACLAssociationResourceArn (\s a -> s { _wAFv2WebACLAssociationResourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html#cfn-wafv2-webaclassociation-webaclarn
wafwaclaWebACLArn :: Lens' WAFv2WebACLAssociation (Val Text)
wafwaclaWebACLArn = lens _wAFv2WebACLAssociationWebACLArn (\s a -> s { _wAFv2WebACLAssociationWebACLArn = a })
