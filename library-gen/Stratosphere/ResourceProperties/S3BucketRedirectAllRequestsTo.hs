{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html

module Stratosphere.ResourceProperties.S3BucketRedirectAllRequestsTo where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketRedirectAllRequestsTo. See
-- | 's3BucketRedirectAllRequestsTo' for a more convenient constructor.
data S3BucketRedirectAllRequestsTo =
  S3BucketRedirectAllRequestsTo
  { _s3BucketRedirectAllRequestsToHostName :: Val Text
  , _s3BucketRedirectAllRequestsToProtocol :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketRedirectAllRequestsTo where
  toJSON S3BucketRedirectAllRequestsTo{..} =
    object
    [ "HostName" .= _s3BucketRedirectAllRequestsToHostName
    , "Protocol" .= _s3BucketRedirectAllRequestsToProtocol
    ]

instance FromJSON S3BucketRedirectAllRequestsTo where
  parseJSON (Object obj) =
    S3BucketRedirectAllRequestsTo <$>
      obj .: "HostName" <*>
      obj .: "Protocol"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketRedirectAllRequestsTo' containing required
-- | fields as arguments.
s3BucketRedirectAllRequestsTo
  :: Val Text -- ^ 'sbrartHostName'
  -> S3BucketRedirectAllRequestsTo
s3BucketRedirectAllRequestsTo hostNamearg =
  S3BucketRedirectAllRequestsTo
  { _s3BucketRedirectAllRequestsToHostName = hostNamearg
  , _s3BucketRedirectAllRequestsToProtocol = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html#cfn-s3-websiteconfiguration-redirectallrequeststo-hostname
sbrartHostName :: Lens' S3BucketRedirectAllRequestsTo (Val Text)
sbrartHostName = lens _s3BucketRedirectAllRequestsToHostName (\s a -> s { _s3BucketRedirectAllRequestsToHostName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html#cfn-s3-websiteconfiguration-redirectallrequeststo-protocol
sbrartProtocol :: Lens' S3BucketRedirectAllRequestsTo (Maybe (Val Text))
sbrartProtocol = lens _s3BucketRedirectAllRequestsToProtocol (\s a -> s { _s3BucketRedirectAllRequestsToProtocol = a })
