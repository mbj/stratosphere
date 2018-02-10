{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html

module Stratosphere.ResourceProperties.WAFRegionalWebACLAction where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalWebACLAction. See
-- 'wafRegionalWebACLAction' for a more convenient constructor.
data WAFRegionalWebACLAction =
  WAFRegionalWebACLAction
  { _wAFRegionalWebACLActionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalWebACLAction where
  toJSON WAFRegionalWebACLAction{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _wAFRegionalWebACLActionType
    ]

instance FromJSON WAFRegionalWebACLAction where
  parseJSON (Object obj) =
    WAFRegionalWebACLAction <$>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalWebACLAction' containing required fields as
-- arguments.
wafRegionalWebACLAction
  :: Val Text -- ^ 'wafrwaclaType'
  -> WAFRegionalWebACLAction
wafRegionalWebACLAction typearg =
  WAFRegionalWebACLAction
  { _wAFRegionalWebACLActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type
wafrwaclaType :: Lens' WAFRegionalWebACLAction (Val Text)
wafrwaclaType = lens _wAFRegionalWebACLActionType (\s a -> s { _wAFRegionalWebACLActionType = a })
