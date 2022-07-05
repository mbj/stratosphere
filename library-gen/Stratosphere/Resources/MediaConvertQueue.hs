{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html

module Stratosphere.Resources.MediaConvertQueue where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaConvertQueue. See 'mediaConvertQueue'
-- for a more convenient constructor.
data MediaConvertQueue =
  MediaConvertQueue
  { _mediaConvertQueueDescription :: Maybe (Val Text)
  , _mediaConvertQueueName :: Maybe (Val Text)
  , _mediaConvertQueuePricingPlan :: Maybe (Val Text)
  , _mediaConvertQueueStatus :: Maybe (Val Text)
  , _mediaConvertQueueTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties MediaConvertQueue where
  toResourceProperties MediaConvertQueue{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaConvert::Queue"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _mediaConvertQueueDescription
        , fmap (("Name",) . toJSON) _mediaConvertQueueName
        , fmap (("PricingPlan",) . toJSON) _mediaConvertQueuePricingPlan
        , fmap (("Status",) . toJSON) _mediaConvertQueueStatus
        , fmap (("Tags",) . toJSON) _mediaConvertQueueTags
        ]
    }

-- | Constructor for 'MediaConvertQueue' containing required fields as
-- arguments.
mediaConvertQueue
  :: MediaConvertQueue
mediaConvertQueue  =
  MediaConvertQueue
  { _mediaConvertQueueDescription = Nothing
  , _mediaConvertQueueName = Nothing
  , _mediaConvertQueuePricingPlan = Nothing
  , _mediaConvertQueueStatus = Nothing
  , _mediaConvertQueueTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-description
mcqDescription :: Lens' MediaConvertQueue (Maybe (Val Text))
mcqDescription = lens _mediaConvertQueueDescription (\s a -> s { _mediaConvertQueueDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-name
mcqName :: Lens' MediaConvertQueue (Maybe (Val Text))
mcqName = lens _mediaConvertQueueName (\s a -> s { _mediaConvertQueueName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-pricingplan
mcqPricingPlan :: Lens' MediaConvertQueue (Maybe (Val Text))
mcqPricingPlan = lens _mediaConvertQueuePricingPlan (\s a -> s { _mediaConvertQueuePricingPlan = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-status
mcqStatus :: Lens' MediaConvertQueue (Maybe (Val Text))
mcqStatus = lens _mediaConvertQueueStatus (\s a -> s { _mediaConvertQueueStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-tags
mcqTags :: Lens' MediaConvertQueue (Maybe Object)
mcqTags = lens _mediaConvertQueueTags (\s a -> s { _mediaConvertQueueTags = a })
