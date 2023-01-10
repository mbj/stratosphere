
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineLambda where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineLambda. See
-- 'ioTAnalyticsPipelineLambda' for a more convenient constructor.
data IoTAnalyticsPipelineLambda =
  IoTAnalyticsPipelineLambda
  { _ioTAnalyticsPipelineLambdaBatchSize :: Maybe (Val Integer)
  , _ioTAnalyticsPipelineLambdaLambdaName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineLambdaName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineLambdaNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineLambda where
  toJSON IoTAnalyticsPipelineLambda{..} =
    object $
    catMaybes
    [ fmap (("BatchSize",) . toJSON) _ioTAnalyticsPipelineLambdaBatchSize
    , fmap (("LambdaName",) . toJSON) _ioTAnalyticsPipelineLambdaLambdaName
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineLambdaName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineLambdaNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineLambda' containing required fields
-- as arguments.
ioTAnalyticsPipelineLambda
  :: IoTAnalyticsPipelineLambda
ioTAnalyticsPipelineLambda  =
  IoTAnalyticsPipelineLambda
  { _ioTAnalyticsPipelineLambdaBatchSize = Nothing
  , _ioTAnalyticsPipelineLambdaLambdaName = Nothing
  , _ioTAnalyticsPipelineLambdaName = Nothing
  , _ioTAnalyticsPipelineLambdaNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-batchsize
itaplBatchSize :: Lens' IoTAnalyticsPipelineLambda (Maybe (Val Integer))
itaplBatchSize = lens _ioTAnalyticsPipelineLambdaBatchSize (\s a -> s { _ioTAnalyticsPipelineLambdaBatchSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-lambdaname
itaplLambdaName :: Lens' IoTAnalyticsPipelineLambda (Maybe (Val Text))
itaplLambdaName = lens _ioTAnalyticsPipelineLambdaLambdaName (\s a -> s { _ioTAnalyticsPipelineLambdaLambdaName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-name
itaplName :: Lens' IoTAnalyticsPipelineLambda (Maybe (Val Text))
itaplName = lens _ioTAnalyticsPipelineLambdaName (\s a -> s { _ioTAnalyticsPipelineLambdaName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-next
itaplNext :: Lens' IoTAnalyticsPipelineLambda (Maybe (Val Text))
itaplNext = lens _ioTAnalyticsPipelineLambdaNext (\s a -> s { _ioTAnalyticsPipelineLambdaNext = a })
