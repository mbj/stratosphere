
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html

module Stratosphere.ResourceProperties.SESReceiptRuleAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESReceiptRuleAddHeaderAction
import Stratosphere.ResourceProperties.SESReceiptRuleBounceAction
import Stratosphere.ResourceProperties.SESReceiptRuleLambdaAction
import Stratosphere.ResourceProperties.SESReceiptRuleS3Action
import Stratosphere.ResourceProperties.SESReceiptRuleSNSAction
import Stratosphere.ResourceProperties.SESReceiptRuleStopAction
import Stratosphere.ResourceProperties.SESReceiptRuleWorkmailAction

-- | Full data type definition for SESReceiptRuleAction. See
-- 'sesReceiptRuleAction' for a more convenient constructor.
data SESReceiptRuleAction =
  SESReceiptRuleAction
  { _sESReceiptRuleActionAddHeaderAction :: Maybe SESReceiptRuleAddHeaderAction
  , _sESReceiptRuleActionBounceAction :: Maybe SESReceiptRuleBounceAction
  , _sESReceiptRuleActionLambdaAction :: Maybe SESReceiptRuleLambdaAction
  , _sESReceiptRuleActionS3Action :: Maybe SESReceiptRuleS3Action
  , _sESReceiptRuleActionSNSAction :: Maybe SESReceiptRuleSNSAction
  , _sESReceiptRuleActionStopAction :: Maybe SESReceiptRuleStopAction
  , _sESReceiptRuleActionWorkmailAction :: Maybe SESReceiptRuleWorkmailAction
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleAction where
  toJSON SESReceiptRuleAction{..} =
    object $
    catMaybes
    [ fmap (("AddHeaderAction",) . toJSON) _sESReceiptRuleActionAddHeaderAction
    , fmap (("BounceAction",) . toJSON) _sESReceiptRuleActionBounceAction
    , fmap (("LambdaAction",) . toJSON) _sESReceiptRuleActionLambdaAction
    , fmap (("S3Action",) . toJSON) _sESReceiptRuleActionS3Action
    , fmap (("SNSAction",) . toJSON) _sESReceiptRuleActionSNSAction
    , fmap (("StopAction",) . toJSON) _sESReceiptRuleActionStopAction
    , fmap (("WorkmailAction",) . toJSON) _sESReceiptRuleActionWorkmailAction
    ]

-- | Constructor for 'SESReceiptRuleAction' containing required fields as
-- arguments.
sesReceiptRuleAction
  :: SESReceiptRuleAction
sesReceiptRuleAction  =
  SESReceiptRuleAction
  { _sESReceiptRuleActionAddHeaderAction = Nothing
  , _sESReceiptRuleActionBounceAction = Nothing
  , _sESReceiptRuleActionLambdaAction = Nothing
  , _sESReceiptRuleActionS3Action = Nothing
  , _sESReceiptRuleActionSNSAction = Nothing
  , _sESReceiptRuleActionStopAction = Nothing
  , _sESReceiptRuleActionWorkmailAction = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-addheaderaction
sesrraAddHeaderAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleAddHeaderAction)
sesrraAddHeaderAction = lens _sESReceiptRuleActionAddHeaderAction (\s a -> s { _sESReceiptRuleActionAddHeaderAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-bounceaction
sesrraBounceAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleBounceAction)
sesrraBounceAction = lens _sESReceiptRuleActionBounceAction (\s a -> s { _sESReceiptRuleActionBounceAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-lambdaaction
sesrraLambdaAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleLambdaAction)
sesrraLambdaAction = lens _sESReceiptRuleActionLambdaAction (\s a -> s { _sESReceiptRuleActionLambdaAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-s3action
sesrraS3Action :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleS3Action)
sesrraS3Action = lens _sESReceiptRuleActionS3Action (\s a -> s { _sESReceiptRuleActionS3Action = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-snsaction
sesrraSNSAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleSNSAction)
sesrraSNSAction = lens _sESReceiptRuleActionSNSAction (\s a -> s { _sESReceiptRuleActionSNSAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-stopaction
sesrraStopAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleStopAction)
sesrraStopAction = lens _sESReceiptRuleActionStopAction (\s a -> s { _sESReceiptRuleActionStopAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-workmailaction
sesrraWorkmailAction :: Lens' SESReceiptRuleAction (Maybe SESReceiptRuleWorkmailAction)
sesrraWorkmailAction = lens _sESReceiptRuleActionWorkmailAction (\s a -> s { _sESReceiptRuleActionWorkmailAction = a })
