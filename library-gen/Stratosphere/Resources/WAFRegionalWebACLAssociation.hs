{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html

module Stratosphere.Resources.WAFRegionalWebACLAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalWebACLAssociation. See
-- 'wafRegionalWebACLAssociation' for a more convenient constructor.
data WAFRegionalWebACLAssociation =
  WAFRegionalWebACLAssociation
  { _wAFRegionalWebACLAssociationResourceArn :: Val Text
  , _wAFRegionalWebACLAssociationWebACLId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalWebACLAssociation where
  toResourceProperties WAFRegionalWebACLAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::WebACLAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ResourceArn",) . toJSON) _wAFRegionalWebACLAssociationResourceArn
        , (Just . ("WebACLId",) . toJSON) _wAFRegionalWebACLAssociationWebACLId
        ]
    }

-- | Constructor for 'WAFRegionalWebACLAssociation' containing required fields
-- as arguments.
wafRegionalWebACLAssociation
  :: Val Text -- ^ 'wafrwaclaResourceArn'
  -> Val Text -- ^ 'wafrwaclaWebACLId'
  -> WAFRegionalWebACLAssociation
wafRegionalWebACLAssociation resourceArnarg webACLIdarg =
  WAFRegionalWebACLAssociation
  { _wAFRegionalWebACLAssociationResourceArn = resourceArnarg
  , _wAFRegionalWebACLAssociationWebACLId = webACLIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-resourcearn
wafrwaclaResourceArn :: Lens' WAFRegionalWebACLAssociation (Val Text)
wafrwaclaResourceArn = lens _wAFRegionalWebACLAssociationResourceArn (\s a -> s { _wAFRegionalWebACLAssociationResourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-webaclid
wafrwaclaWebACLId :: Lens' WAFRegionalWebACLAssociation (Val Text)
wafrwaclaWebACLId = lens _wAFRegionalWebACLAssociationWebACLId (\s a -> s { _wAFRegionalWebACLAssociationWebACLId = a })
