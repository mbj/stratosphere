{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html

module Stratosphere.Resources.WAFRegionalByteMatchSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFRegionalByteMatchSetByteMatchTuple

-- | Full data type definition for WAFRegionalByteMatchSet. See
-- 'wafRegionalByteMatchSet' for a more convenient constructor.
data WAFRegionalByteMatchSet =
  WAFRegionalByteMatchSet
  { _wAFRegionalByteMatchSetByteMatchTuples :: Maybe [WAFRegionalByteMatchSetByteMatchTuple]
  , _wAFRegionalByteMatchSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalByteMatchSet where
  toJSON WAFRegionalByteMatchSet{..} =
    object $
    catMaybes
    [ ("ByteMatchTuples" .=) <$> _wAFRegionalByteMatchSetByteMatchTuples
    , Just ("Name" .= _wAFRegionalByteMatchSetName)
    ]

instance FromJSON WAFRegionalByteMatchSet where
  parseJSON (Object obj) =
    WAFRegionalByteMatchSet <$>
      obj .:? "ByteMatchTuples" <*>
      obj .: "Name"
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalByteMatchSet' containing required fields as
-- arguments.
wafRegionalByteMatchSet
  :: Val Text -- ^ 'wafrbmsName'
  -> WAFRegionalByteMatchSet
wafRegionalByteMatchSet namearg =
  WAFRegionalByteMatchSet
  { _wAFRegionalByteMatchSetByteMatchTuples = Nothing
  , _wAFRegionalByteMatchSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-bytematchtuples
wafrbmsByteMatchTuples :: Lens' WAFRegionalByteMatchSet (Maybe [WAFRegionalByteMatchSetByteMatchTuple])
wafrbmsByteMatchTuples = lens _wAFRegionalByteMatchSetByteMatchTuples (\s a -> s { _wAFRegionalByteMatchSetByteMatchTuples = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-name
wafrbmsName :: Lens' WAFRegionalByteMatchSet (Val Text)
wafrbmsName = lens _wAFRegionalByteMatchSetName (\s a -> s { _wAFRegionalByteMatchSetName = a })
