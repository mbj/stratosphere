{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleStopAction where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleStopAction. See
-- 'sesReceiptRuleStopAction' for a more convenient constructor.
data SESReceiptRuleStopAction =
  SESReceiptRuleStopAction
  { _sESReceiptRuleStopActionScope :: Val Text
  , _sESReceiptRuleStopActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleStopAction where
  toJSON SESReceiptRuleStopAction{..} =
    object $
    catMaybes
    [ (Just . ("Scope",) . toJSON) _sESReceiptRuleStopActionScope
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleStopActionTopicArn
    ]

instance FromJSON SESReceiptRuleStopAction where
  parseJSON (Object obj) =
    SESReceiptRuleStopAction <$>
      (obj .: "Scope") <*>
      (obj .:? "TopicArn")
  parseJSON _ = mempty

-- | Constructor for 'SESReceiptRuleStopAction' containing required fields as
-- arguments.
sesReceiptRuleStopAction
  :: Val Text -- ^ 'sesrrstaScope'
  -> SESReceiptRuleStopAction
sesReceiptRuleStopAction scopearg =
  SESReceiptRuleStopAction
  { _sESReceiptRuleStopActionScope = scopearg
  , _sESReceiptRuleStopActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-scope
sesrrstaScope :: Lens' SESReceiptRuleStopAction (Val Text)
sesrrstaScope = lens _sESReceiptRuleStopActionScope (\s a -> s { _sESReceiptRuleStopActionScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-topicarn
sesrrstaTopicArn :: Lens' SESReceiptRuleStopAction (Maybe (Val Text))
sesrrstaTopicArn = lens _sESReceiptRuleStopActionTopicArn (\s a -> s { _sESReceiptRuleStopActionTopicArn = a })
