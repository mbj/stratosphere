{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html

module Stratosphere.Resources.IoTEventsDetectorModel where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelDetectorModelDefinition
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTEventsDetectorModel. See
-- 'ioTEventsDetectorModel' for a more convenient constructor.
data IoTEventsDetectorModel =
  IoTEventsDetectorModel
  { _ioTEventsDetectorModelDetectorModelDefinition :: Maybe IoTEventsDetectorModelDetectorModelDefinition
  , _ioTEventsDetectorModelDetectorModelDescription :: Maybe (Val Text)
  , _ioTEventsDetectorModelDetectorModelName :: Maybe (Val Text)
  , _ioTEventsDetectorModelEvaluationMethod :: Maybe (Val Text)
  , _ioTEventsDetectorModelKey :: Maybe (Val Text)
  , _ioTEventsDetectorModelRoleArn :: Maybe (Val Text)
  , _ioTEventsDetectorModelTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IoTEventsDetectorModel where
  toResourceProperties IoTEventsDetectorModel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTEvents::DetectorModel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DetectorModelDefinition",) . toJSON) _ioTEventsDetectorModelDetectorModelDefinition
        , fmap (("DetectorModelDescription",) . toJSON) _ioTEventsDetectorModelDetectorModelDescription
        , fmap (("DetectorModelName",) . toJSON) _ioTEventsDetectorModelDetectorModelName
        , fmap (("EvaluationMethod",) . toJSON) _ioTEventsDetectorModelEvaluationMethod
        , fmap (("Key",) . toJSON) _ioTEventsDetectorModelKey
        , fmap (("RoleArn",) . toJSON) _ioTEventsDetectorModelRoleArn
        , fmap (("Tags",) . toJSON) _ioTEventsDetectorModelTags
        ]
    }

-- | Constructor for 'IoTEventsDetectorModel' containing required fields as
-- arguments.
ioTEventsDetectorModel
  :: IoTEventsDetectorModel
ioTEventsDetectorModel  =
  IoTEventsDetectorModel
  { _ioTEventsDetectorModelDetectorModelDefinition = Nothing
  , _ioTEventsDetectorModelDetectorModelDescription = Nothing
  , _ioTEventsDetectorModelDetectorModelName = Nothing
  , _ioTEventsDetectorModelEvaluationMethod = Nothing
  , _ioTEventsDetectorModelKey = Nothing
  , _ioTEventsDetectorModelRoleArn = Nothing
  , _ioTEventsDetectorModelTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodeldefinition
itedmDetectorModelDefinition :: Lens' IoTEventsDetectorModel (Maybe IoTEventsDetectorModelDetectorModelDefinition)
itedmDetectorModelDefinition = lens _ioTEventsDetectorModelDetectorModelDefinition (\s a -> s { _ioTEventsDetectorModelDetectorModelDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodeldescription
itedmDetectorModelDescription :: Lens' IoTEventsDetectorModel (Maybe (Val Text))
itedmDetectorModelDescription = lens _ioTEventsDetectorModelDetectorModelDescription (\s a -> s { _ioTEventsDetectorModelDetectorModelDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodelname
itedmDetectorModelName :: Lens' IoTEventsDetectorModel (Maybe (Val Text))
itedmDetectorModelName = lens _ioTEventsDetectorModelDetectorModelName (\s a -> s { _ioTEventsDetectorModelDetectorModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-evaluationmethod
itedmEvaluationMethod :: Lens' IoTEventsDetectorModel (Maybe (Val Text))
itedmEvaluationMethod = lens _ioTEventsDetectorModelEvaluationMethod (\s a -> s { _ioTEventsDetectorModelEvaluationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-key
itedmKey :: Lens' IoTEventsDetectorModel (Maybe (Val Text))
itedmKey = lens _ioTEventsDetectorModelKey (\s a -> s { _ioTEventsDetectorModelKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-rolearn
itedmRoleArn :: Lens' IoTEventsDetectorModel (Maybe (Val Text))
itedmRoleArn = lens _ioTEventsDetectorModelRoleArn (\s a -> s { _ioTEventsDetectorModelRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-tags
itedmTags :: Lens' IoTEventsDetectorModel (Maybe [Tag])
itedmTags = lens _ioTEventsDetectorModelTags (\s a -> s { _ioTEventsDetectorModelTags = a })
