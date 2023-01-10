
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html

module Stratosphere.ResourceProperties.EMRStepHadoopJarStepConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRStepKeyValue

-- | Full data type definition for EMRStepHadoopJarStepConfig. See
-- 'emrStepHadoopJarStepConfig' for a more convenient constructor.
data EMRStepHadoopJarStepConfig =
  EMRStepHadoopJarStepConfig
  { _eMRStepHadoopJarStepConfigArgs :: Maybe (ValList Text)
  , _eMRStepHadoopJarStepConfigJar :: Val Text
  , _eMRStepHadoopJarStepConfigMainClass :: Maybe (Val Text)
  , _eMRStepHadoopJarStepConfigStepProperties :: Maybe [EMRStepKeyValue]
  } deriving (Show, Eq)

instance ToJSON EMRStepHadoopJarStepConfig where
  toJSON EMRStepHadoopJarStepConfig{..} =
    object $
    catMaybes
    [ fmap (("Args",) . toJSON) _eMRStepHadoopJarStepConfigArgs
    , (Just . ("Jar",) . toJSON) _eMRStepHadoopJarStepConfigJar
    , fmap (("MainClass",) . toJSON) _eMRStepHadoopJarStepConfigMainClass
    , fmap (("StepProperties",) . toJSON) _eMRStepHadoopJarStepConfigStepProperties
    ]

-- | Constructor for 'EMRStepHadoopJarStepConfig' containing required fields
-- as arguments.
emrStepHadoopJarStepConfig
  :: Val Text -- ^ 'emrshjscJar'
  -> EMRStepHadoopJarStepConfig
emrStepHadoopJarStepConfig jararg =
  EMRStepHadoopJarStepConfig
  { _eMRStepHadoopJarStepConfigArgs = Nothing
  , _eMRStepHadoopJarStepConfigJar = jararg
  , _eMRStepHadoopJarStepConfigMainClass = Nothing
  , _eMRStepHadoopJarStepConfigStepProperties = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-args
emrshjscArgs :: Lens' EMRStepHadoopJarStepConfig (Maybe (ValList Text))
emrshjscArgs = lens _eMRStepHadoopJarStepConfigArgs (\s a -> s { _eMRStepHadoopJarStepConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-jar
emrshjscJar :: Lens' EMRStepHadoopJarStepConfig (Val Text)
emrshjscJar = lens _eMRStepHadoopJarStepConfigJar (\s a -> s { _eMRStepHadoopJarStepConfigJar = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-mainclass
emrshjscMainClass :: Lens' EMRStepHadoopJarStepConfig (Maybe (Val Text))
emrshjscMainClass = lens _eMRStepHadoopJarStepConfigMainClass (\s a -> s { _eMRStepHadoopJarStepConfigMainClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-stepproperties
emrshjscStepProperties :: Lens' EMRStepHadoopJarStepConfig (Maybe [EMRStepKeyValue])
emrshjscStepProperties = lens _eMRStepHadoopJarStepConfigStepProperties (\s a -> s { _eMRStepHadoopJarStepConfigStepProperties = a })
