{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleWorkmailAction where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleWorkmailAction. See
-- 'sesReceiptRuleWorkmailAction' for a more convenient constructor.
data SESReceiptRuleWorkmailAction =
  SESReceiptRuleWorkmailAction
  { _sESReceiptRuleWorkmailActionOrganizationArn :: Val Text
  , _sESReceiptRuleWorkmailActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleWorkmailAction where
  toJSON SESReceiptRuleWorkmailAction{..} =
    object $
    catMaybes
    [ (Just . ("OrganizationArn",) . toJSON) _sESReceiptRuleWorkmailActionOrganizationArn
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleWorkmailActionTopicArn
    ]

instance FromJSON SESReceiptRuleWorkmailAction where
  parseJSON (Object obj) =
    SESReceiptRuleWorkmailAction <$>
      (obj .: "OrganizationArn") <*>
      (obj .:? "TopicArn")
  parseJSON _ = mempty

-- | Constructor for 'SESReceiptRuleWorkmailAction' containing required fields
-- as arguments.
sesReceiptRuleWorkmailAction
  :: Val Text -- ^ 'sesrrwaOrganizationArn'
  -> SESReceiptRuleWorkmailAction
sesReceiptRuleWorkmailAction organizationArnarg =
  SESReceiptRuleWorkmailAction
  { _sESReceiptRuleWorkmailActionOrganizationArn = organizationArnarg
  , _sESReceiptRuleWorkmailActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-organizationarn
sesrrwaOrganizationArn :: Lens' SESReceiptRuleWorkmailAction (Val Text)
sesrrwaOrganizationArn = lens _sESReceiptRuleWorkmailActionOrganizationArn (\s a -> s { _sESReceiptRuleWorkmailActionOrganizationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-topicarn
sesrrwaTopicArn :: Lens' SESReceiptRuleWorkmailAction (Maybe (Val Text))
sesrrwaTopicArn = lens _sESReceiptRuleWorkmailActionTopicArn (\s a -> s { _sESReceiptRuleWorkmailActionTopicArn = a })
