{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html

module Stratosphere.Resources.WAFSizeConstraintSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFSizeConstraintSetSizeConstraint

-- | Full data type definition for WAFSizeConstraintSet. See
-- 'wafSizeConstraintSet' for a more convenient constructor.
data WAFSizeConstraintSet =
  WAFSizeConstraintSet
  { _wAFSizeConstraintSetName :: Val Text
  , _wAFSizeConstraintSetSizeConstraints :: [WAFSizeConstraintSetSizeConstraint]
  } deriving (Show, Eq)

instance ToResourceProperties WAFSizeConstraintSet where
  toResourceProperties WAFSizeConstraintSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAF::SizeConstraintSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _wAFSizeConstraintSetName
        , (Just . ("SizeConstraints",) . toJSON) _wAFSizeConstraintSetSizeConstraints
        ]
    }

-- | Constructor for 'WAFSizeConstraintSet' containing required fields as
-- arguments.
wafSizeConstraintSet
  :: Val Text -- ^ 'wafscsName'
  -> [WAFSizeConstraintSetSizeConstraint] -- ^ 'wafscsSizeConstraints'
  -> WAFSizeConstraintSet
wafSizeConstraintSet namearg sizeConstraintsarg =
  WAFSizeConstraintSet
  { _wAFSizeConstraintSetName = namearg
  , _wAFSizeConstraintSetSizeConstraints = sizeConstraintsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html#cfn-waf-sizeconstraintset-name
wafscsName :: Lens' WAFSizeConstraintSet (Val Text)
wafscsName = lens _wAFSizeConstraintSetName (\s a -> s { _wAFSizeConstraintSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html#cfn-waf-sizeconstraintset-sizeconstraints
wafscsSizeConstraints :: Lens' WAFSizeConstraintSet [WAFSizeConstraintSetSizeConstraint]
wafscsSizeConstraints = lens _wAFSizeConstraintSetSizeConstraints (\s a -> s { _wAFSizeConstraintSetSizeConstraints = a })
