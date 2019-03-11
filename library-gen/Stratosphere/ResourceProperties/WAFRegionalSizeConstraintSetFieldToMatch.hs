{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFRegionalSizeConstraintSetFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalSizeConstraintSetFieldToMatch.
-- See 'wafRegionalSizeConstraintSetFieldToMatch' for a more convenient
-- constructor.
data WAFRegionalSizeConstraintSetFieldToMatch =
  WAFRegionalSizeConstraintSetFieldToMatch
  { _wAFRegionalSizeConstraintSetFieldToMatchData :: Maybe (Val Text)
  , _wAFRegionalSizeConstraintSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalSizeConstraintSetFieldToMatch where
  toJSON WAFRegionalSizeConstraintSetFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("Data",) . toJSON) _wAFRegionalSizeConstraintSetFieldToMatchData
    , (Just . ("Type",) . toJSON) _wAFRegionalSizeConstraintSetFieldToMatchType
    ]

-- | Constructor for 'WAFRegionalSizeConstraintSetFieldToMatch' containing
-- required fields as arguments.
wafRegionalSizeConstraintSetFieldToMatch
  :: Val Text -- ^ 'wafrscsftmType'
  -> WAFRegionalSizeConstraintSetFieldToMatch
wafRegionalSizeConstraintSetFieldToMatch typearg =
  WAFRegionalSizeConstraintSetFieldToMatch
  { _wAFRegionalSizeConstraintSetFieldToMatchData = Nothing
  , _wAFRegionalSizeConstraintSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html#cfn-wafregional-sizeconstraintset-fieldtomatch-data
wafrscsftmData :: Lens' WAFRegionalSizeConstraintSetFieldToMatch (Maybe (Val Text))
wafrscsftmData = lens _wAFRegionalSizeConstraintSetFieldToMatchData (\s a -> s { _wAFRegionalSizeConstraintSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html#cfn-wafregional-sizeconstraintset-fieldtomatch-type
wafrscsftmType :: Lens' WAFRegionalSizeConstraintSetFieldToMatch (Val Text)
wafrscsftmType = lens _wAFRegionalSizeConstraintSetFieldToMatchType (\s a -> s { _wAFRegionalSizeConstraintSetFieldToMatchType = a })
