{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html

module Stratosphere.Resources.WAFByteMatchSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFByteMatchSetByteMatchTuple

-- | Full data type definition for WAFByteMatchSet. See 'wafByteMatchSet' for
-- a more convenient constructor.
data WAFByteMatchSet =
  WAFByteMatchSet
  { _wAFByteMatchSetByteMatchTuples :: Maybe [WAFByteMatchSetByteMatchTuple]
  , _wAFByteMatchSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFByteMatchSet where
  toJSON WAFByteMatchSet{..} =
    object $
    catMaybes
    [ fmap (("ByteMatchTuples",) . toJSON) _wAFByteMatchSetByteMatchTuples
    , (Just . ("Name",) . toJSON) _wAFByteMatchSetName
    ]

instance FromJSON WAFByteMatchSet where
  parseJSON (Object obj) =
    WAFByteMatchSet <$>
      (obj .:? "ByteMatchTuples") <*>
      (obj .: "Name")
  parseJSON _ = mempty

-- | Constructor for 'WAFByteMatchSet' containing required fields as
-- arguments.
wafByteMatchSet
  :: Val Text -- ^ 'wafbmsName'
  -> WAFByteMatchSet
wafByteMatchSet namearg =
  WAFByteMatchSet
  { _wAFByteMatchSetByteMatchTuples = Nothing
  , _wAFByteMatchSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-bytematchtuples
wafbmsByteMatchTuples :: Lens' WAFByteMatchSet (Maybe [WAFByteMatchSetByteMatchTuple])
wafbmsByteMatchTuples = lens _wAFByteMatchSetByteMatchTuples (\s a -> s { _wAFByteMatchSetByteMatchTuples = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-name
wafbmsName :: Lens' WAFByteMatchSet (Val Text)
wafbmsName = lens _wAFByteMatchSetName (\s a -> s { _wAFByteMatchSetName = a })
