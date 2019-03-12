{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleBounceAction where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleBounceAction. See
-- 'sesReceiptRuleBounceAction' for a more convenient constructor.
data SESReceiptRuleBounceAction =
  SESReceiptRuleBounceAction
  { _sESReceiptRuleBounceActionMessage :: Val Text
  , _sESReceiptRuleBounceActionSender :: Val Text
  , _sESReceiptRuleBounceActionSmtpReplyCode :: Val Text
  , _sESReceiptRuleBounceActionStatusCode :: Maybe (Val Text)
  , _sESReceiptRuleBounceActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleBounceAction where
  toJSON SESReceiptRuleBounceAction{..} =
    object $
    catMaybes
    [ (Just . ("Message",) . toJSON) _sESReceiptRuleBounceActionMessage
    , (Just . ("Sender",) . toJSON) _sESReceiptRuleBounceActionSender
    , (Just . ("SmtpReplyCode",) . toJSON) _sESReceiptRuleBounceActionSmtpReplyCode
    , fmap (("StatusCode",) . toJSON) _sESReceiptRuleBounceActionStatusCode
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleBounceActionTopicArn
    ]

-- | Constructor for 'SESReceiptRuleBounceAction' containing required fields
-- as arguments.
sesReceiptRuleBounceAction
  :: Val Text -- ^ 'sesrrbaMessage'
  -> Val Text -- ^ 'sesrrbaSender'
  -> Val Text -- ^ 'sesrrbaSmtpReplyCode'
  -> SESReceiptRuleBounceAction
sesReceiptRuleBounceAction messagearg senderarg smtpReplyCodearg =
  SESReceiptRuleBounceAction
  { _sESReceiptRuleBounceActionMessage = messagearg
  , _sESReceiptRuleBounceActionSender = senderarg
  , _sESReceiptRuleBounceActionSmtpReplyCode = smtpReplyCodearg
  , _sESReceiptRuleBounceActionStatusCode = Nothing
  , _sESReceiptRuleBounceActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-message
sesrrbaMessage :: Lens' SESReceiptRuleBounceAction (Val Text)
sesrrbaMessage = lens _sESReceiptRuleBounceActionMessage (\s a -> s { _sESReceiptRuleBounceActionMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-sender
sesrrbaSender :: Lens' SESReceiptRuleBounceAction (Val Text)
sesrrbaSender = lens _sESReceiptRuleBounceActionSender (\s a -> s { _sESReceiptRuleBounceActionSender = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-smtpreplycode
sesrrbaSmtpReplyCode :: Lens' SESReceiptRuleBounceAction (Val Text)
sesrrbaSmtpReplyCode = lens _sESReceiptRuleBounceActionSmtpReplyCode (\s a -> s { _sESReceiptRuleBounceActionSmtpReplyCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-statuscode
sesrrbaStatusCode :: Lens' SESReceiptRuleBounceAction (Maybe (Val Text))
sesrrbaStatusCode = lens _sESReceiptRuleBounceActionStatusCode (\s a -> s { _sESReceiptRuleBounceActionStatusCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-topicarn
sesrrbaTopicArn :: Lens' SESReceiptRuleBounceAction (Maybe (Val Text))
sesrrbaTopicArn = lens _sESReceiptRuleBounceActionTopicArn (\s a -> s { _sESReceiptRuleBounceActionTopicArn = a })
