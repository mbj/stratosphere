{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html

module Stratosphere.ResourceProperties.SESReceiptFilterFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESReceiptFilterIpFilter

-- | Full data type definition for SESReceiptFilterFilter. See
-- 'sesReceiptFilterFilter' for a more convenient constructor.
data SESReceiptFilterFilter =
  SESReceiptFilterFilter
  { _sESReceiptFilterFilterIpFilter :: SESReceiptFilterIpFilter
  , _sESReceiptFilterFilterName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptFilterFilter where
  toJSON SESReceiptFilterFilter{..} =
    object $
    catMaybes
    [ (Just . ("IpFilter",) . toJSON) _sESReceiptFilterFilterIpFilter
    , fmap (("Name",) . toJSON) _sESReceiptFilterFilterName
    ]

instance FromJSON SESReceiptFilterFilter where
  parseJSON (Object obj) =
    SESReceiptFilterFilter <$>
      (obj .: "IpFilter") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'SESReceiptFilterFilter' containing required fields as
-- arguments.
sesReceiptFilterFilter
  :: SESReceiptFilterIpFilter -- ^ 'sesrffIpFilter'
  -> SESReceiptFilterFilter
sesReceiptFilterFilter ipFilterarg =
  SESReceiptFilterFilter
  { _sESReceiptFilterFilterIpFilter = ipFilterarg
  , _sESReceiptFilterFilterName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-ipfilter
sesrffIpFilter :: Lens' SESReceiptFilterFilter SESReceiptFilterIpFilter
sesrffIpFilter = lens _sESReceiptFilterFilterIpFilter (\s a -> s { _sESReceiptFilterFilterIpFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-name
sesrffName :: Lens' SESReceiptFilterFilter (Maybe (Val Text))
sesrffName = lens _sESReceiptFilterFilterName (\s a -> s { _sESReceiptFilterFilterName = a })
