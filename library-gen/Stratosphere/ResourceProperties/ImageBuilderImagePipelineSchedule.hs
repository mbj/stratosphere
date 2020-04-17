{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html

module Stratosphere.ResourceProperties.ImageBuilderImagePipelineSchedule where

import Stratosphere.ResourceImports


-- | Full data type definition for ImageBuilderImagePipelineSchedule. See
-- 'imageBuilderImagePipelineSchedule' for a more convenient constructor.
data ImageBuilderImagePipelineSchedule =
  ImageBuilderImagePipelineSchedule
  { _imageBuilderImagePipelineSchedulePipelineExecutionStartCondition :: Maybe (Val Text)
  , _imageBuilderImagePipelineScheduleScheduleExpression :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImagePipelineSchedule where
  toJSON ImageBuilderImagePipelineSchedule{..} =
    object $
    catMaybes
    [ fmap (("PipelineExecutionStartCondition",) . toJSON) _imageBuilderImagePipelineSchedulePipelineExecutionStartCondition
    , fmap (("ScheduleExpression",) . toJSON) _imageBuilderImagePipelineScheduleScheduleExpression
    ]

-- | Constructor for 'ImageBuilderImagePipelineSchedule' containing required
-- fields as arguments.
imageBuilderImagePipelineSchedule
  :: ImageBuilderImagePipelineSchedule
imageBuilderImagePipelineSchedule  =
  ImageBuilderImagePipelineSchedule
  { _imageBuilderImagePipelineSchedulePipelineExecutionStartCondition = Nothing
  , _imageBuilderImagePipelineScheduleScheduleExpression = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-pipelineexecutionstartcondition
ibipsPipelineExecutionStartCondition :: Lens' ImageBuilderImagePipelineSchedule (Maybe (Val Text))
ibipsPipelineExecutionStartCondition = lens _imageBuilderImagePipelineSchedulePipelineExecutionStartCondition (\s a -> s { _imageBuilderImagePipelineSchedulePipelineExecutionStartCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-scheduleexpression
ibipsScheduleExpression :: Lens' ImageBuilderImagePipelineSchedule (Maybe (Val Text))
ibipsScheduleExpression = lens _imageBuilderImagePipelineScheduleScheduleExpression (\s a -> s { _imageBuilderImagePipelineScheduleScheduleExpression = a })
