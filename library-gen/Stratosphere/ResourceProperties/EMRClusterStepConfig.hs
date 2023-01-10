
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html

module Stratosphere.ResourceProperties.EMRClusterStepConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterHadoopJarStepConfig

-- | Full data type definition for EMRClusterStepConfig. See
-- 'emrClusterStepConfig' for a more convenient constructor.
data EMRClusterStepConfig =
  EMRClusterStepConfig
  { _eMRClusterStepConfigActionOnFailure :: Maybe (Val Text)
  , _eMRClusterStepConfigHadoopJarStep :: EMRClusterHadoopJarStepConfig
  , _eMRClusterStepConfigName :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterStepConfig where
  toJSON EMRClusterStepConfig{..} =
    object $
    catMaybes
    [ fmap (("ActionOnFailure",) . toJSON) _eMRClusterStepConfigActionOnFailure
    , (Just . ("HadoopJarStep",) . toJSON) _eMRClusterStepConfigHadoopJarStep
    , (Just . ("Name",) . toJSON) _eMRClusterStepConfigName
    ]

-- | Constructor for 'EMRClusterStepConfig' containing required fields as
-- arguments.
emrClusterStepConfig
  :: EMRClusterHadoopJarStepConfig -- ^ 'emrcscHadoopJarStep'
  -> Val Text -- ^ 'emrcscName'
  -> EMRClusterStepConfig
emrClusterStepConfig hadoopJarSteparg namearg =
  EMRClusterStepConfig
  { _eMRClusterStepConfigActionOnFailure = Nothing
  , _eMRClusterStepConfigHadoopJarStep = hadoopJarSteparg
  , _eMRClusterStepConfigName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-actiononfailure
emrcscActionOnFailure :: Lens' EMRClusterStepConfig (Maybe (Val Text))
emrcscActionOnFailure = lens _eMRClusterStepConfigActionOnFailure (\s a -> s { _eMRClusterStepConfigActionOnFailure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-hadoopjarstep
emrcscHadoopJarStep :: Lens' EMRClusterStepConfig EMRClusterHadoopJarStepConfig
emrcscHadoopJarStep = lens _eMRClusterStepConfigHadoopJarStep (\s a -> s { _eMRClusterStepConfigHadoopJarStep = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-stepconfig.html#cfn-elasticmapreduce-cluster-stepconfig-name
emrcscName :: Lens' EMRClusterStepConfig (Val Text)
emrcscName = lens _eMRClusterStepConfigName (\s a -> s { _eMRClusterStepConfigName = a })
