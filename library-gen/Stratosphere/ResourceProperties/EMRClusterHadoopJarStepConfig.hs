
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html

module Stratosphere.ResourceProperties.EMRClusterHadoopJarStepConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterKeyValue

-- | Full data type definition for EMRClusterHadoopJarStepConfig. See
-- 'emrClusterHadoopJarStepConfig' for a more convenient constructor.
data EMRClusterHadoopJarStepConfig =
  EMRClusterHadoopJarStepConfig
  { _eMRClusterHadoopJarStepConfigArgs :: Maybe (ValList Text)
  , _eMRClusterHadoopJarStepConfigJar :: Val Text
  , _eMRClusterHadoopJarStepConfigMainClass :: Maybe (Val Text)
  , _eMRClusterHadoopJarStepConfigStepProperties :: Maybe [EMRClusterKeyValue]
  } deriving (Show, Eq)

instance ToJSON EMRClusterHadoopJarStepConfig where
  toJSON EMRClusterHadoopJarStepConfig{..} =
    object $
    catMaybes
    [ fmap (("Args",) . toJSON) _eMRClusterHadoopJarStepConfigArgs
    , (Just . ("Jar",) . toJSON) _eMRClusterHadoopJarStepConfigJar
    , fmap (("MainClass",) . toJSON) _eMRClusterHadoopJarStepConfigMainClass
    , fmap (("StepProperties",) . toJSON) _eMRClusterHadoopJarStepConfigStepProperties
    ]

-- | Constructor for 'EMRClusterHadoopJarStepConfig' containing required
-- fields as arguments.
emrClusterHadoopJarStepConfig
  :: Val Text -- ^ 'emrchjscJar'
  -> EMRClusterHadoopJarStepConfig
emrClusterHadoopJarStepConfig jararg =
  EMRClusterHadoopJarStepConfig
  { _eMRClusterHadoopJarStepConfigArgs = Nothing
  , _eMRClusterHadoopJarStepConfigJar = jararg
  , _eMRClusterHadoopJarStepConfigMainClass = Nothing
  , _eMRClusterHadoopJarStepConfigStepProperties = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-args
emrchjscArgs :: Lens' EMRClusterHadoopJarStepConfig (Maybe (ValList Text))
emrchjscArgs = lens _eMRClusterHadoopJarStepConfigArgs (\s a -> s { _eMRClusterHadoopJarStepConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-jar
emrchjscJar :: Lens' EMRClusterHadoopJarStepConfig (Val Text)
emrchjscJar = lens _eMRClusterHadoopJarStepConfigJar (\s a -> s { _eMRClusterHadoopJarStepConfigJar = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-mainclass
emrchjscMainClass :: Lens' EMRClusterHadoopJarStepConfig (Maybe (Val Text))
emrchjscMainClass = lens _eMRClusterHadoopJarStepConfigMainClass (\s a -> s { _eMRClusterHadoopJarStepConfigMainClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-stepproperties
emrchjscStepProperties :: Lens' EMRClusterHadoopJarStepConfig (Maybe [EMRClusterKeyValue])
emrchjscStepProperties = lens _eMRClusterHadoopJarStepConfigStepProperties (\s a -> s { _eMRClusterHadoopJarStepConfigStepProperties = a })
