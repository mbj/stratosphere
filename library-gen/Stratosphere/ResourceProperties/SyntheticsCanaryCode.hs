{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html

module Stratosphere.ResourceProperties.SyntheticsCanaryCode where

import Stratosphere.ResourceImports


-- | Full data type definition for SyntheticsCanaryCode. See
-- 'syntheticsCanaryCode' for a more convenient constructor.
data SyntheticsCanaryCode =
  SyntheticsCanaryCode
  { _syntheticsCanaryCodeHandler :: Maybe (Val Text)
  , _syntheticsCanaryCodeS3Bucket :: Maybe (Val Text)
  , _syntheticsCanaryCodeS3Key :: Maybe (Val Text)
  , _syntheticsCanaryCodeS3ObjectVersion :: Maybe (Val Text)
  , _syntheticsCanaryCodeScript :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SyntheticsCanaryCode where
  toJSON SyntheticsCanaryCode{..} =
    object $
    catMaybes
    [ fmap (("Handler",) . toJSON) _syntheticsCanaryCodeHandler
    , fmap (("S3Bucket",) . toJSON) _syntheticsCanaryCodeS3Bucket
    , fmap (("S3Key",) . toJSON) _syntheticsCanaryCodeS3Key
    , fmap (("S3ObjectVersion",) . toJSON) _syntheticsCanaryCodeS3ObjectVersion
    , fmap (("Script",) . toJSON) _syntheticsCanaryCodeScript
    ]

-- | Constructor for 'SyntheticsCanaryCode' containing required fields as
-- arguments.
syntheticsCanaryCode
  :: SyntheticsCanaryCode
syntheticsCanaryCode  =
  SyntheticsCanaryCode
  { _syntheticsCanaryCodeHandler = Nothing
  , _syntheticsCanaryCodeS3Bucket = Nothing
  , _syntheticsCanaryCodeS3Key = Nothing
  , _syntheticsCanaryCodeS3ObjectVersion = Nothing
  , _syntheticsCanaryCodeScript = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-handler
sccHandler :: Lens' SyntheticsCanaryCode (Maybe (Val Text))
sccHandler = lens _syntheticsCanaryCodeHandler (\s a -> s { _syntheticsCanaryCodeHandler = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3bucket
sccS3Bucket :: Lens' SyntheticsCanaryCode (Maybe (Val Text))
sccS3Bucket = lens _syntheticsCanaryCodeS3Bucket (\s a -> s { _syntheticsCanaryCodeS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3key
sccS3Key :: Lens' SyntheticsCanaryCode (Maybe (Val Text))
sccS3Key = lens _syntheticsCanaryCodeS3Key (\s a -> s { _syntheticsCanaryCodeS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3objectversion
sccS3ObjectVersion :: Lens' SyntheticsCanaryCode (Maybe (Val Text))
sccS3ObjectVersion = lens _syntheticsCanaryCodeS3ObjectVersion (\s a -> s { _syntheticsCanaryCodeS3ObjectVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-script
sccScript :: Lens' SyntheticsCanaryCode (Maybe (Val Text))
sccScript = lens _syntheticsCanaryCodeScript (\s a -> s { _syntheticsCanaryCodeScript = a })
