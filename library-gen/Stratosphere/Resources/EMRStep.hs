{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-step.html

module Stratosphere.Resources.EMRStep where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRStepHadoopJarStepConfig

-- | Full data type definition for EMRStep. See 'emrStep' for a more
-- convenient constructor.
data EMRStep =
  EMRStep
  { _eMRStepActionOnFailure :: Val Text
  , _eMRStepHadoopJarStep :: EMRStepHadoopJarStepConfig
  , _eMRStepJobFlowId :: Val Text
  , _eMRStepName :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRStep where
  toJSON EMRStep{..} =
    object $
    catMaybes
    [ Just ("ActionOnFailure" .= _eMRStepActionOnFailure)
    , Just ("HadoopJarStep" .= _eMRStepHadoopJarStep)
    , Just ("JobFlowId" .= _eMRStepJobFlowId)
    , Just ("Name" .= _eMRStepName)
    ]

instance FromJSON EMRStep where
  parseJSON (Object obj) =
    EMRStep <$>
      obj .: "ActionOnFailure" <*>
      obj .: "HadoopJarStep" <*>
      obj .: "JobFlowId" <*>
      obj .: "Name"
  parseJSON _ = mempty

-- | Constructor for 'EMRStep' containing required fields as arguments.
emrStep
  :: Val Text -- ^ 'emrsActionOnFailure'
  -> EMRStepHadoopJarStepConfig -- ^ 'emrsHadoopJarStep'
  -> Val Text -- ^ 'emrsJobFlowId'
  -> Val Text -- ^ 'emrsName'
  -> EMRStep
emrStep actionOnFailurearg hadoopJarSteparg jobFlowIdarg namearg =
  EMRStep
  { _eMRStepActionOnFailure = actionOnFailurearg
  , _eMRStepHadoopJarStep = hadoopJarSteparg
  , _eMRStepJobFlowId = jobFlowIdarg
  , _eMRStepName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-step.html#cfn-elasticmapreduce-step-actiononfailure
emrsActionOnFailure :: Lens' EMRStep (Val Text)
emrsActionOnFailure = lens _eMRStepActionOnFailure (\s a -> s { _eMRStepActionOnFailure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-step.html#cfn-elasticmapreduce-step-hadoopjarstep
emrsHadoopJarStep :: Lens' EMRStep EMRStepHadoopJarStepConfig
emrsHadoopJarStep = lens _eMRStepHadoopJarStep (\s a -> s { _eMRStepHadoopJarStep = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-step.html#cfn-elasticmapreduce-step-jobflowid
emrsJobFlowId :: Lens' EMRStep (Val Text)
emrsJobFlowId = lens _eMRStepJobFlowId (\s a -> s { _eMRStepJobFlowId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-step.html#cfn-elasticmapreduce-step-name
emrsName :: Lens' EMRStep (Val Text)
emrsName = lens _eMRStepName (\s a -> s { _eMRStepName = a })
