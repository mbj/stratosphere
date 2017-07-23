{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html

module Stratosphere.Resources.WAFRegionalWebACLAssociation where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for WAFRegionalWebACLAssociation. See
-- 'wafRegionalWebACLAssociation' for a more convenient constructor.
data WAFRegionalWebACLAssociation =
  WAFRegionalWebACLAssociation
  { _wAFRegionalWebACLAssociationResourceArn :: Val Text
  , _wAFRegionalWebACLAssociationWebACLId :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalWebACLAssociation where
  toJSON WAFRegionalWebACLAssociation{..} =
    object $
    catMaybes
    [ (Just . ("ResourceArn",) . toJSON) _wAFRegionalWebACLAssociationResourceArn
    , (Just . ("WebACLId",) . toJSON) _wAFRegionalWebACLAssociationWebACLId
    ]

instance FromJSON WAFRegionalWebACLAssociation where
  parseJSON (Object obj) =
    WAFRegionalWebACLAssociation <$>
      (obj .: "ResourceArn") <*>
      (obj .: "WebACLId")
  parseJSON _ = mempty

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
