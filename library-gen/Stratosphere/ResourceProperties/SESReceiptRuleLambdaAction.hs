
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html

module Stratosphere.ResourceProperties.SESReceiptRuleLambdaAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleLambdaAction. See
-- 'sesReceiptRuleLambdaAction' for a more convenient constructor.
data SESReceiptRuleLambdaAction =
  SESReceiptRuleLambdaAction
  { _sESReceiptRuleLambdaActionFunctionArn :: Val Text
  , _sESReceiptRuleLambdaActionInvocationType :: Maybe (Val Text)
  , _sESReceiptRuleLambdaActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleLambdaAction where
  toJSON SESReceiptRuleLambdaAction{..} =
    object $
    catMaybes
    [ (Just . ("FunctionArn",) . toJSON) _sESReceiptRuleLambdaActionFunctionArn
    , fmap (("InvocationType",) . toJSON) _sESReceiptRuleLambdaActionInvocationType
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleLambdaActionTopicArn
    ]

-- | Constructor for 'SESReceiptRuleLambdaAction' containing required fields
-- as arguments.
sesReceiptRuleLambdaAction
  :: Val Text -- ^ 'sesrrlaFunctionArn'
  -> SESReceiptRuleLambdaAction
sesReceiptRuleLambdaAction functionArnarg =
  SESReceiptRuleLambdaAction
  { _sESReceiptRuleLambdaActionFunctionArn = functionArnarg
  , _sESReceiptRuleLambdaActionInvocationType = Nothing
  , _sESReceiptRuleLambdaActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-functionarn
sesrrlaFunctionArn :: Lens' SESReceiptRuleLambdaAction (Val Text)
sesrrlaFunctionArn = lens _sESReceiptRuleLambdaActionFunctionArn (\s a -> s { _sESReceiptRuleLambdaActionFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-invocationtype
sesrrlaInvocationType :: Lens' SESReceiptRuleLambdaAction (Maybe (Val Text))
sesrrlaInvocationType = lens _sESReceiptRuleLambdaActionInvocationType (\s a -> s { _sESReceiptRuleLambdaActionInvocationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-topicarn
sesrrlaTopicArn :: Lens' SESReceiptRuleLambdaAction (Maybe (Val Text))
sesrrlaTopicArn = lens _sESReceiptRuleLambdaActionTopicArn (\s a -> s { _sESReceiptRuleLambdaActionTopicArn = a })
