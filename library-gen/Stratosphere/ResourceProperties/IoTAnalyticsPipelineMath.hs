{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineMath where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineMath. See
-- 'ioTAnalyticsPipelineMath' for a more convenient constructor.
data IoTAnalyticsPipelineMath =
  IoTAnalyticsPipelineMath
  { _ioTAnalyticsPipelineMathAttribute :: Maybe (Val Text)
  , _ioTAnalyticsPipelineMathMath :: Maybe (Val Text)
  , _ioTAnalyticsPipelineMathName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineMathNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineMath where
  toJSON IoTAnalyticsPipelineMath{..} =
    object $
    catMaybes
    [ fmap (("Attribute",) . toJSON) _ioTAnalyticsPipelineMathAttribute
    , fmap (("Math",) . toJSON) _ioTAnalyticsPipelineMathMath
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineMathName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineMathNext
    ]

instance FromJSON IoTAnalyticsPipelineMath where
  parseJSON (Object obj) =
    IoTAnalyticsPipelineMath <$>
      (obj .:? "Attribute") <*>
      (obj .:? "Math") <*>
      (obj .:? "Name") <*>
      (obj .:? "Next")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsPipelineMath' containing required fields as
-- arguments.
ioTAnalyticsPipelineMath
  :: IoTAnalyticsPipelineMath
ioTAnalyticsPipelineMath  =
  IoTAnalyticsPipelineMath
  { _ioTAnalyticsPipelineMathAttribute = Nothing
  , _ioTAnalyticsPipelineMathMath = Nothing
  , _ioTAnalyticsPipelineMathName = Nothing
  , _ioTAnalyticsPipelineMathNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-attribute
itapmAttribute :: Lens' IoTAnalyticsPipelineMath (Maybe (Val Text))
itapmAttribute = lens _ioTAnalyticsPipelineMathAttribute (\s a -> s { _ioTAnalyticsPipelineMathAttribute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-math
itapmMath :: Lens' IoTAnalyticsPipelineMath (Maybe (Val Text))
itapmMath = lens _ioTAnalyticsPipelineMathMath (\s a -> s { _ioTAnalyticsPipelineMathMath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-name
itapmName :: Lens' IoTAnalyticsPipelineMath (Maybe (Val Text))
itapmName = lens _ioTAnalyticsPipelineMathName (\s a -> s { _ioTAnalyticsPipelineMathName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-next
itapmNext :: Lens' IoTAnalyticsPipelineMath (Maybe (Val Text))
itapmNext = lens _ioTAnalyticsPipelineMathNext (\s a -> s { _ioTAnalyticsPipelineMathNext = a })
