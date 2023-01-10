
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleAddHeaderAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleAddHeaderAction. See
-- 'sesReceiptRuleAddHeaderAction' for a more convenient constructor.
data SESReceiptRuleAddHeaderAction =
  SESReceiptRuleAddHeaderAction
  { _sESReceiptRuleAddHeaderActionHeaderName :: Val Text
  , _sESReceiptRuleAddHeaderActionHeaderValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleAddHeaderAction where
  toJSON SESReceiptRuleAddHeaderAction{..} =
    object $
    catMaybes
    [ (Just . ("HeaderName",) . toJSON) _sESReceiptRuleAddHeaderActionHeaderName
    , (Just . ("HeaderValue",) . toJSON) _sESReceiptRuleAddHeaderActionHeaderValue
    ]

-- | Constructor for 'SESReceiptRuleAddHeaderAction' containing required
-- fields as arguments.
sesReceiptRuleAddHeaderAction
  :: Val Text -- ^ 'sesrrahaHeaderName'
  -> Val Text -- ^ 'sesrrahaHeaderValue'
  -> SESReceiptRuleAddHeaderAction
sesReceiptRuleAddHeaderAction headerNamearg headerValuearg =
  SESReceiptRuleAddHeaderAction
  { _sESReceiptRuleAddHeaderActionHeaderName = headerNamearg
  , _sESReceiptRuleAddHeaderActionHeaderValue = headerValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headername
sesrrahaHeaderName :: Lens' SESReceiptRuleAddHeaderAction (Val Text)
sesrrahaHeaderName = lens _sESReceiptRuleAddHeaderActionHeaderName (\s a -> s { _sESReceiptRuleAddHeaderActionHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headervalue
sesrrahaHeaderValue :: Lens' SESReceiptRuleAddHeaderAction (Val Text)
sesrrahaHeaderValue = lens _sESReceiptRuleAddHeaderActionHeaderValue (\s a -> s { _sESReceiptRuleAddHeaderActionHeaderValue = a })
