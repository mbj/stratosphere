
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleSNSAction where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleSNSAction. See
-- 'sesReceiptRuleSNSAction' for a more convenient constructor.
data SESReceiptRuleSNSAction =
  SESReceiptRuleSNSAction
  { _sESReceiptRuleSNSActionEncoding :: Maybe (Val Text)
  , _sESReceiptRuleSNSActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleSNSAction where
  toJSON SESReceiptRuleSNSAction{..} =
    object $
    catMaybes
    [ fmap (("Encoding",) . toJSON) _sESReceiptRuleSNSActionEncoding
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleSNSActionTopicArn
    ]

-- | Constructor for 'SESReceiptRuleSNSAction' containing required fields as
-- arguments.
sesReceiptRuleSNSAction
  :: SESReceiptRuleSNSAction
sesReceiptRuleSNSAction  =
  SESReceiptRuleSNSAction
  { _sESReceiptRuleSNSActionEncoding = Nothing
  , _sESReceiptRuleSNSActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-encoding
sesrrsnsaEncoding :: Lens' SESReceiptRuleSNSAction (Maybe (Val Text))
sesrrsnsaEncoding = lens _sESReceiptRuleSNSActionEncoding (\s a -> s { _sESReceiptRuleSNSActionEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-topicarn
sesrrsnsaTopicArn :: Lens' SESReceiptRuleSNSAction (Maybe (Val Text))
sesrrsnsaTopicArn = lens _sESReceiptRuleSNSActionTopicArn (\s a -> s { _sESReceiptRuleSNSActionTopicArn = a })
