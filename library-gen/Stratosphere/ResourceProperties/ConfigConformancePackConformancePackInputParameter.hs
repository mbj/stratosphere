
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-conformancepack-conformancepackinputparameter.html

module Stratosphere.ResourceProperties.ConfigConformancePackConformancePackInputParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigConformancePackConformancePackInputParameter. See
-- 'configConformancePackConformancePackInputParameter' for a more
-- convenient constructor.
data ConfigConformancePackConformancePackInputParameter =
  ConfigConformancePackConformancePackInputParameter
  { _configConformancePackConformancePackInputParameterParameterName :: Val Text
  , _configConformancePackConformancePackInputParameterParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigConformancePackConformancePackInputParameter where
  toJSON ConfigConformancePackConformancePackInputParameter{..} =
    object $
    catMaybes
    [ (Just . ("ParameterName",) . toJSON) _configConformancePackConformancePackInputParameterParameterName
    , (Just . ("ParameterValue",) . toJSON) _configConformancePackConformancePackInputParameterParameterValue
    ]

-- | Constructor for 'ConfigConformancePackConformancePackInputParameter'
-- containing required fields as arguments.
configConformancePackConformancePackInputParameter
  :: Val Text -- ^ 'ccpcpipParameterName'
  -> Val Text -- ^ 'ccpcpipParameterValue'
  -> ConfigConformancePackConformancePackInputParameter
configConformancePackConformancePackInputParameter parameterNamearg parameterValuearg =
  ConfigConformancePackConformancePackInputParameter
  { _configConformancePackConformancePackInputParameterParameterName = parameterNamearg
  , _configConformancePackConformancePackInputParameterParameterValue = parameterValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-conformancepack-conformancepackinputparameter.html#cfn-config-conformancepack-conformancepackinputparameter-parametername
ccpcpipParameterName :: Lens' ConfigConformancePackConformancePackInputParameter (Val Text)
ccpcpipParameterName = lens _configConformancePackConformancePackInputParameterParameterName (\s a -> s { _configConformancePackConformancePackInputParameterParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-conformancepack-conformancepackinputparameter.html#cfn-config-conformancepack-conformancepackinputparameter-parametervalue
ccpcpipParameterValue :: Lens' ConfigConformancePackConformancePackInputParameter (Val Text)
ccpcpipParameterValue = lens _configConformancePackConformancePackInputParameterParameterValue (\s a -> s { _configConformancePackConformancePackInputParameterParameterValue = a })
