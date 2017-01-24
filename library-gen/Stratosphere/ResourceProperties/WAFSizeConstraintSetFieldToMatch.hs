{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFSizeConstraintSetFieldToMatch where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for WAFSizeConstraintSetFieldToMatch. See
-- | 'wafSizeConstraintSetFieldToMatch' for a more convenient constructor.
data WAFSizeConstraintSetFieldToMatch =
  WAFSizeConstraintSetFieldToMatch
  { _wAFSizeConstraintSetFieldToMatchData :: Maybe (Val Text)
  , _wAFSizeConstraintSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFSizeConstraintSetFieldToMatch where
  toJSON WAFSizeConstraintSetFieldToMatch{..} =
    object
    [ "Data" .= _wAFSizeConstraintSetFieldToMatchData
    , "Type" .= _wAFSizeConstraintSetFieldToMatchType
    ]

instance FromJSON WAFSizeConstraintSetFieldToMatch where
  parseJSON (Object obj) =
    WAFSizeConstraintSetFieldToMatch <$>
      obj .: "Data" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'WAFSizeConstraintSetFieldToMatch' containing required
-- | fields as arguments.
wafSizeConstraintSetFieldToMatch
  :: Val Text -- ^ 'wafscsftmType'
  -> WAFSizeConstraintSetFieldToMatch
wafSizeConstraintSetFieldToMatch typearg =
  WAFSizeConstraintSetFieldToMatch
  { _wAFSizeConstraintSetFieldToMatchData = Nothing
  , _wAFSizeConstraintSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-data
wafscsftmData :: Lens' WAFSizeConstraintSetFieldToMatch (Maybe (Val Text))
wafscsftmData = lens _wAFSizeConstraintSetFieldToMatchData (\s a -> s { _wAFSizeConstraintSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-type
wafscsftmType :: Lens' WAFSizeConstraintSetFieldToMatch (Val Text)
wafscsftmType = lens _wAFSizeConstraintSetFieldToMatchType (\s a -> s { _wAFSizeConstraintSetFieldToMatchType = a })
