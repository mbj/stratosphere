
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html

module Stratosphere.ResourceProperties.EventsRuleTarget where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsRuleBatchParameters
import Stratosphere.ResourceProperties.EventsRuleEcsParameters
import Stratosphere.ResourceProperties.EventsRuleHttpParameters
import Stratosphere.ResourceProperties.EventsRuleInputTransformer
import Stratosphere.ResourceProperties.EventsRuleKinesisParameters
import Stratosphere.ResourceProperties.EventsRuleRunCommandParameters
import Stratosphere.ResourceProperties.EventsRuleSqsParameters

-- | Full data type definition for EventsRuleTarget. See 'eventsRuleTarget'
-- for a more convenient constructor.
data EventsRuleTarget =
  EventsRuleTarget
  { _eventsRuleTargetArn :: Val Text
  , _eventsRuleTargetBatchParameters :: Maybe EventsRuleBatchParameters
  , _eventsRuleTargetEcsParameters :: Maybe EventsRuleEcsParameters
  , _eventsRuleTargetHttpParameters :: Maybe EventsRuleHttpParameters
  , _eventsRuleTargetId :: Val Text
  , _eventsRuleTargetInput :: Maybe (Val Text)
  , _eventsRuleTargetInputPath :: Maybe (Val Text)
  , _eventsRuleTargetInputTransformer :: Maybe EventsRuleInputTransformer
  , _eventsRuleTargetKinesisParameters :: Maybe EventsRuleKinesisParameters
  , _eventsRuleTargetRoleArn :: Maybe (Val Text)
  , _eventsRuleTargetRunCommandParameters :: Maybe EventsRuleRunCommandParameters
  , _eventsRuleTargetSqsParameters :: Maybe EventsRuleSqsParameters
  } deriving (Show, Eq)

instance ToJSON EventsRuleTarget where
  toJSON EventsRuleTarget{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _eventsRuleTargetArn
    , fmap (("BatchParameters",) . toJSON) _eventsRuleTargetBatchParameters
    , fmap (("EcsParameters",) . toJSON) _eventsRuleTargetEcsParameters
    , fmap (("HttpParameters",) . toJSON) _eventsRuleTargetHttpParameters
    , (Just . ("Id",) . toJSON) _eventsRuleTargetId
    , fmap (("Input",) . toJSON) _eventsRuleTargetInput
    , fmap (("InputPath",) . toJSON) _eventsRuleTargetInputPath
    , fmap (("InputTransformer",) . toJSON) _eventsRuleTargetInputTransformer
    , fmap (("KinesisParameters",) . toJSON) _eventsRuleTargetKinesisParameters
    , fmap (("RoleArn",) . toJSON) _eventsRuleTargetRoleArn
    , fmap (("RunCommandParameters",) . toJSON) _eventsRuleTargetRunCommandParameters
    , fmap (("SqsParameters",) . toJSON) _eventsRuleTargetSqsParameters
    ]

-- | Constructor for 'EventsRuleTarget' containing required fields as
-- arguments.
eventsRuleTarget
  :: Val Text -- ^ 'ertArn'
  -> Val Text -- ^ 'ertId'
  -> EventsRuleTarget
eventsRuleTarget arnarg idarg =
  EventsRuleTarget
  { _eventsRuleTargetArn = arnarg
  , _eventsRuleTargetBatchParameters = Nothing
  , _eventsRuleTargetEcsParameters = Nothing
  , _eventsRuleTargetHttpParameters = Nothing
  , _eventsRuleTargetId = idarg
  , _eventsRuleTargetInput = Nothing
  , _eventsRuleTargetInputPath = Nothing
  , _eventsRuleTargetInputTransformer = Nothing
  , _eventsRuleTargetKinesisParameters = Nothing
  , _eventsRuleTargetRoleArn = Nothing
  , _eventsRuleTargetRunCommandParameters = Nothing
  , _eventsRuleTargetSqsParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn
ertArn :: Lens' EventsRuleTarget (Val Text)
ertArn = lens _eventsRuleTargetArn (\s a -> s { _eventsRuleTargetArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-batchparameters
ertBatchParameters :: Lens' EventsRuleTarget (Maybe EventsRuleBatchParameters)
ertBatchParameters = lens _eventsRuleTargetBatchParameters (\s a -> s { _eventsRuleTargetBatchParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-ecsparameters
ertEcsParameters :: Lens' EventsRuleTarget (Maybe EventsRuleEcsParameters)
ertEcsParameters = lens _eventsRuleTargetEcsParameters (\s a -> s { _eventsRuleTargetEcsParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-httpparameters
ertHttpParameters :: Lens' EventsRuleTarget (Maybe EventsRuleHttpParameters)
ertHttpParameters = lens _eventsRuleTargetHttpParameters (\s a -> s { _eventsRuleTargetHttpParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id
ertId :: Lens' EventsRuleTarget (Val Text)
ertId = lens _eventsRuleTargetId (\s a -> s { _eventsRuleTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input
ertInput :: Lens' EventsRuleTarget (Maybe (Val Text))
ertInput = lens _eventsRuleTargetInput (\s a -> s { _eventsRuleTargetInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath
ertInputPath :: Lens' EventsRuleTarget (Maybe (Val Text))
ertInputPath = lens _eventsRuleTargetInputPath (\s a -> s { _eventsRuleTargetInputPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputtransformer
ertInputTransformer :: Lens' EventsRuleTarget (Maybe EventsRuleInputTransformer)
ertInputTransformer = lens _eventsRuleTargetInputTransformer (\s a -> s { _eventsRuleTargetInputTransformer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-kinesisparameters
ertKinesisParameters :: Lens' EventsRuleTarget (Maybe EventsRuleKinesisParameters)
ertKinesisParameters = lens _eventsRuleTargetKinesisParameters (\s a -> s { _eventsRuleTargetKinesisParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn
ertRoleArn :: Lens' EventsRuleTarget (Maybe (Val Text))
ertRoleArn = lens _eventsRuleTargetRoleArn (\s a -> s { _eventsRuleTargetRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-runcommandparameters
ertRunCommandParameters :: Lens' EventsRuleTarget (Maybe EventsRuleRunCommandParameters)
ertRunCommandParameters = lens _eventsRuleTargetRunCommandParameters (\s a -> s { _eventsRuleTargetRunCommandParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sqsparameters
ertSqsParameters :: Lens' EventsRuleTarget (Maybe EventsRuleSqsParameters)
ertSqsParameters = lens _eventsRuleTargetSqsParameters (\s a -> s { _eventsRuleTargetSqsParameters = a })
