{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html

module Stratosphere.Resources.WAFRegionalSizeConstraintSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFRegionalSizeConstraintSetSizeConstraint

-- | Full data type definition for WAFRegionalSizeConstraintSet. See
-- 'wafRegionalSizeConstraintSet' for a more convenient constructor.
data WAFRegionalSizeConstraintSet =
  WAFRegionalSizeConstraintSet
  { _wAFRegionalSizeConstraintSetName :: Val Text
  , _wAFRegionalSizeConstraintSetSizeConstraints :: Maybe [WAFRegionalSizeConstraintSetSizeConstraint]
  } deriving (Show, Eq)

instance ToJSON WAFRegionalSizeConstraintSet where
  toJSON WAFRegionalSizeConstraintSet{..} =
    object $
    catMaybes
    [ Just ("Name" .= _wAFRegionalSizeConstraintSetName)
    , ("SizeConstraints" .=) <$> _wAFRegionalSizeConstraintSetSizeConstraints
    ]

instance FromJSON WAFRegionalSizeConstraintSet where
  parseJSON (Object obj) =
    WAFRegionalSizeConstraintSet <$>
      obj .: "Name" <*>
      obj .:? "SizeConstraints"
  parseJSON _ = mempty

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
