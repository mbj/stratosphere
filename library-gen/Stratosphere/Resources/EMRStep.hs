{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html

module Stratosphere.Resources.EMRStep where

import Stratosphere.ResourceImports
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

instance ToResourceProperties EMRStep where
  toResourceProperties EMRStep{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EMR::Step"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ActionOnFailure",) . toJSON) _eMRStepActionOnFailure
        , (Just . ("HadoopJarStep",) . toJSON) _eMRStepHadoopJarStep
        , (Just . ("JobFlowId",) . toJSON) _eMRStepJobFlowId
        , (Just . ("Name",) . toJSON) _eMRStepName
        ]
    }

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-actiononfailure
emrsActionOnFailure :: Lens' EMRStep (Val Text)
emrsActionOnFailure = lens _eMRStepActionOnFailure (\s a -> s { _eMRStepActionOnFailure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-hadoopjarstep
emrsHadoopJarStep :: Lens' EMRStep EMRStepHadoopJarStepConfig
emrsHadoopJarStep = lens _eMRStepHadoopJarStep (\s a -> s { _eMRStepHadoopJarStep = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-jobflowid
emrsJobFlowId :: Lens' EMRStep (Val Text)
emrsJobFlowId = lens _eMRStepJobFlowId (\s a -> s { _eMRStepJobFlowId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-name
emrsName :: Lens' EMRStep (Val Text)
emrsName = lens _eMRStepName (\s a -> s { _eMRStepName = a })
