{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html

module Stratosphere.Resources.WAFRegionalSizeConstraintSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalSizeConstraintSetSizeConstraint

-- | Full data type definition for WAFRegionalSizeConstraintSet. See
-- 'wafRegionalSizeConstraintSet' for a more convenient constructor.
data WAFRegionalSizeConstraintSet =
  WAFRegionalSizeConstraintSet
  { _wAFRegionalSizeConstraintSetName :: Val Text
  , _wAFRegionalSizeConstraintSetSizeConstraints :: Maybe [WAFRegionalSizeConstraintSetSizeConstraint]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalSizeConstraintSet where
  toResourceProperties WAFRegionalSizeConstraintSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::SizeConstraintSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _wAFRegionalSizeConstraintSetName
        , fmap (("SizeConstraints",) . toJSON) _wAFRegionalSizeConstraintSetSizeConstraints
        ]
    }

-- | Constructor for 'WAFRegionalSizeConstraintSet' containing required fields
-- as arguments.
wafRegionalSizeConstraintSet
  :: Val Text -- ^ 'wafrscsName'
  -> WAFRegionalSizeConstraintSet
wafRegionalSizeConstraintSet namearg =
  WAFRegionalSizeConstraintSet
  { _wAFRegionalSizeConstraintSetName = namearg
  , _wAFRegionalSizeConstraintSetSizeConstraints = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html#cfn-wafregional-sizeconstraintset-name
wafrscsName :: Lens' WAFRegionalSizeConstraintSet (Val Text)
wafrscsName = lens _wAFRegionalSizeConstraintSetName (\s a -> s { _wAFRegionalSizeConstraintSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html#cfn-wafregional-sizeconstraintset-sizeconstraints
wafrscsSizeConstraints :: Lens' WAFRegionalSizeConstraintSet (Maybe [WAFRegionalSizeConstraintSetSizeConstraint])
wafrscsSizeConstraints = lens _wAFRegionalSizeConstraintSetSizeConstraints (\s a -> s { _wAFRegionalSizeConstraintSetSizeConstraints = a })
