{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html

module Stratosphere.Resources.WAFSizeConstraintSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFSizeConstraintSetSizeConstraint

-- | Full data type definition for WAFSizeConstraintSet. See
-- | 'wafSizeConstraintSet' for a more convenient constructor.
data WAFSizeConstraintSet =
  WAFSizeConstraintSet
  { _wAFSizeConstraintSetName :: Val Text
  , _wAFSizeConstraintSetSizeConstraints :: [WAFSizeConstraintSetSizeConstraint]
  } deriving (Show, Eq)

instance ToJSON WAFSizeConstraintSet where
  toJSON WAFSizeConstraintSet{..} =
    object
    [ "Name" .= _wAFSizeConstraintSetName
    , "SizeConstraints" .= _wAFSizeConstraintSetSizeConstraints
    ]

instance FromJSON WAFSizeConstraintSet where
  parseJSON (Object obj) =
    WAFSizeConstraintSet <$>
      obj .: "Name" <*>
      obj .: "SizeConstraints"
  parseJSON _ = mempty

-- | Constructor for 'WAFSizeConstraintSet' containing required fields as
-- | arguments.
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
