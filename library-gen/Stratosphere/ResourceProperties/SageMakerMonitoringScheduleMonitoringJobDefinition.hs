
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringJobDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleBaselineConfig
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringAppSpecification
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringInputs
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringOutputConfig
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringResources
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleNetworkConfig
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleStoppingCondition

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringJobDefinition. See
-- 'sageMakerMonitoringScheduleMonitoringJobDefinition' for a more
-- convenient constructor.
data SageMakerMonitoringScheduleMonitoringJobDefinition =
  SageMakerMonitoringScheduleMonitoringJobDefinition
  { _sageMakerMonitoringScheduleMonitoringJobDefinitionBaselineConfig :: Maybe SageMakerMonitoringScheduleBaselineConfig
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringAppSpecification :: SageMakerMonitoringScheduleMonitoringAppSpecification
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringInputs :: SageMakerMonitoringScheduleMonitoringInputs
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringOutputConfig :: SageMakerMonitoringScheduleMonitoringOutputConfig
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringResources :: SageMakerMonitoringScheduleMonitoringResources
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionNetworkConfig :: Maybe SageMakerMonitoringScheduleNetworkConfig
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionRoleArn :: Val Text
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionStoppingCondition :: Maybe SageMakerMonitoringScheduleStoppingCondition
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringJobDefinition where
  toJSON SageMakerMonitoringScheduleMonitoringJobDefinition{..} =
    object $
    catMaybes
    [ fmap (("BaselineConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionBaselineConfig
    , (Just . ("MonitoringAppSpecification",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringAppSpecification
    , (Just . ("MonitoringInputs",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringInputs
    , (Just . ("MonitoringOutputConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringOutputConfig
    , (Just . ("MonitoringResources",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringResources
    , fmap (("NetworkConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionNetworkConfig
    , (Just . ("RoleArn",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionRoleArn
    , fmap (("StoppingCondition",) . toJSON) _sageMakerMonitoringScheduleMonitoringJobDefinitionStoppingCondition
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringJobDefinition'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringJobDefinition
  :: SageMakerMonitoringScheduleMonitoringAppSpecification -- ^ 'smmsmjdMonitoringAppSpecification'
  -> SageMakerMonitoringScheduleMonitoringInputs -- ^ 'smmsmjdMonitoringInputs'
  -> SageMakerMonitoringScheduleMonitoringOutputConfig -- ^ 'smmsmjdMonitoringOutputConfig'
  -> SageMakerMonitoringScheduleMonitoringResources -- ^ 'smmsmjdMonitoringResources'
  -> Val Text -- ^ 'smmsmjdRoleArn'
  -> SageMakerMonitoringScheduleMonitoringJobDefinition
sageMakerMonitoringScheduleMonitoringJobDefinition monitoringAppSpecificationarg monitoringInputsarg monitoringOutputConfigarg monitoringResourcesarg roleArnarg =
  SageMakerMonitoringScheduleMonitoringJobDefinition
  { _sageMakerMonitoringScheduleMonitoringJobDefinitionBaselineConfig = Nothing
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringAppSpecification = monitoringAppSpecificationarg
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringInputs = monitoringInputsarg
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringOutputConfig = monitoringOutputConfigarg
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringResources = monitoringResourcesarg
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionNetworkConfig = Nothing
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionRoleArn = roleArnarg
  , _sageMakerMonitoringScheduleMonitoringJobDefinitionStoppingCondition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-baselineconfig
smmsmjdBaselineConfig :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition (Maybe SageMakerMonitoringScheduleBaselineConfig)
smmsmjdBaselineConfig = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionBaselineConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionBaselineConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringappspecification
smmsmjdMonitoringAppSpecification :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition SageMakerMonitoringScheduleMonitoringAppSpecification
smmsmjdMonitoringAppSpecification = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringAppSpecification (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringAppSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringinputs
smmsmjdMonitoringInputs :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition SageMakerMonitoringScheduleMonitoringInputs
smmsmjdMonitoringInputs = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringInputs (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringInputs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringoutputconfig
smmsmjdMonitoringOutputConfig :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition SageMakerMonitoringScheduleMonitoringOutputConfig
smmsmjdMonitoringOutputConfig = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringOutputConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringOutputConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringresources
smmsmjdMonitoringResources :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition SageMakerMonitoringScheduleMonitoringResources
smmsmjdMonitoringResources = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringResources (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionMonitoringResources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-networkconfig
smmsmjdNetworkConfig :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition (Maybe SageMakerMonitoringScheduleNetworkConfig)
smmsmjdNetworkConfig = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionNetworkConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionNetworkConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-rolearn
smmsmjdRoleArn :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition (Val Text)
smmsmjdRoleArn = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionRoleArn (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-stoppingcondition
smmsmjdStoppingCondition :: Lens' SageMakerMonitoringScheduleMonitoringJobDefinition (Maybe SageMakerMonitoringScheduleStoppingCondition)
smmsmjdStoppingCondition = lens _sageMakerMonitoringScheduleMonitoringJobDefinitionStoppingCondition (\s a -> s { _sageMakerMonitoringScheduleMonitoringJobDefinitionStoppingCondition = a })
